package com.zhiyou.servlet.house;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhiyou.service.HouseService;
import com.zhiyou.serviceimpl.HouseServiceImpl;

/**
 * Servlet implementation class HouseDeleteServlet
 */
@WebServlet("/house/delete")
public class HouseDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HouseDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("html/text;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		String hId= request.getParameter("h_id");
		Integer id = Integer.parseInt(hId);
		HouseService houseService =new HouseServiceImpl();
		int num = houseService.delete(id);
		if (num == 1) {
			request.getRequestDispatcher("/HousePageServlet").forward(request, response);
		} else {
			request.setAttribute("msg", "删除失败");
			request.getRequestDispatcher("/house/find").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
