package com.zhiyou.util;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhiyou.pojo.PageBean;
import com.zhiyou.service.HouseService;
import com.zhiyou.service.UserService;
import com.zhiyou.serviceimpl.HouseServiceImpl;
import com.zhiyou.serviceimpl.UserServiceImpl;

/**
 * Servlet implementation class HousePageServlet
 */
@WebServlet("/HousePageServlet")
public class HousePageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HousePageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("html/text;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		//从页面中传递过来的当前页数
		String pageCode = request.getParameter("pc");
		int pc;
		if(pageCode == null) {
			pc = 1;
		}else {
			pc = Integer.parseInt(pageCode);
		}

		PageBean pageBean = new PageBean();
		pageBean.setRecord(10);
		pageBean.setPc(pc);
		HouseService houseService =new HouseServiceImpl();
		PageBean pBean = houseService.page(pageBean);
		request.setAttribute("pb", pBean);
		request.getRequestDispatcher("/view/house/list.jsp").forward(request, response);
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
