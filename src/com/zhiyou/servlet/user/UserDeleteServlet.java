package com.zhiyou.servlet.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhiyou.service.UserService;
import com.zhiyou.serviceimpl.UserServiceImpl;

/**
 * Servlet implementation class UserDeleteServlet
 */
@WebServlet("/user/delete")
public class UserDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserDeleteServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("html/text;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		String uid = request.getParameter("u_id");
		Integer id = Integer.parseInt(uid);
		UserService userService = new UserServiceImpl();
		int num = userService.delete(id);
		if (num == 1) {
			request.getRequestDispatcher("/PageServlet").forward(request, response);
		} else {
			request.setAttribute("msg", "删除失败");
			request.getRequestDispatcher("/usershow").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
