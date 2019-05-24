package com.zhiyou.servlet.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhiyou.pojo.User;
import com.zhiyou.pojo.UserPage;
import com.zhiyou.service.UserService;
import com.zhiyou.serviceimpl.UserServiceImpl;

/**
 * Servlet implementation class UserSelServlet
 */
@WebServlet("/userSel")
public class UserSelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserSelServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("html/text;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		//模糊查询
		String name = request.getParameter("name");
		int role_id = -1;
		if(request.getParameter("role_id")!=null && !request.getParameter("role_id").equals("")){
			role_id = Integer.parseInt(request.getParameter("role_id"));
		}
		User user = new User(name,role_id);
	//分页条件
	String pageCode = request.getParameter("pc");
	int pc;
	if(pageCode == null) {
		pc = 1;
	}else {
		pc=Integer.parseInt(pageCode);
	}
	
	UserPage pb = new UserPage();
	pb.setRecord(10);
	pb.setPc(pc);
	pb.setUser(user);
	
	UserService userService = new UserServiceImpl();
	UserPage up = userService.sel(pb);
	request.setAttribute("pb", up);
	request.getRequestDispatcher("/view/user/list.jsp").forward(request, response);
	
	
	
	
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
