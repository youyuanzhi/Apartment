package com.zhiyou.servlet.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhiyou.pojo.User;
import com.zhiyou.service.UserService;
import com.zhiyou.serviceimpl.UserServiceImpl;

/**
 * Servlet implementation class UserUpdateServlet
 */
@WebServlet("/user/update")
public class UserUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("html/text;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		String uid = request.getParameter("u_id");
		int id = Integer.parseInt(uid);
		String username=request.getParameter("u_name");
		String password=request.getParameter("u_pass");
		String realname=request.getParameter("u_realname");
		
		User user = new User(id,username,password,realname);
		
		UserService userService = new UserServiceImpl();
		int num = userService.update(user);
		if(num==1) {
			request.getRequestDispatcher("/PageServlet").forward(request, response);
		}else {
			request.setAttribute("msg", "无法修改");
			request.getRequestDispatcher("/view/user/update.jsp").forward(request, response);
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
