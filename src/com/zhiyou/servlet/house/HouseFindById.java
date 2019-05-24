package com.zhiyou.servlet.house;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhiyou.pojo.House;
import com.zhiyou.service.HouseService;
import com.zhiyou.serviceimpl.HouseServiceImpl;

/**
 * Servlet implementation class HouseFindById
 */
@WebServlet("/house/findbyid")
public class HouseFindById extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HouseFindById() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("html/text;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		HouseService houseService =new HouseServiceImpl();
		String hId= request.getParameter("h_id");
		Integer id = Integer.parseInt(hId);
		House house = houseService.findById(id);
		if(house !=null) {
			request.setAttribute("house", house);
			request.getRequestDispatcher("/view/house/update.jsp").forward(request, response);
		}else {
			request.setAttribute("msg", "不让你改");
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
