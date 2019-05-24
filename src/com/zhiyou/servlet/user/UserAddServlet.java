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
 * Servlet implementation class UserAddServlet
 */
@WebServlet("/UserAddServlet")
public class UserAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserAddServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserService userService = new UserServiceImpl();
		String username = request.getParameter("name");
		String password = request.getParameter("pass");	
		String realname = request.getParameter("realname");
		String sex = request.getParameter("u_sex");
		User user = new User(username,password,realname,sex);
//		String rid = request.getParameter("role_id");
//		String ctime= request.getParameter("u_create_ctime");
//		String us=request.getParameter("u_state");
		int num = userService.add(user);
		if(num == 1){
			request.getRequestDispatcher("/PageServlet").forward(request, response);
			
		}else{
			request.setAttribute("userAddMsg", "添加用户失败");
			request.getRequestDispatcher("view/user/add.jsp").forward(request, response);
			
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
