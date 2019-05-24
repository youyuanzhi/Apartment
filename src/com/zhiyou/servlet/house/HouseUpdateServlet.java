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
 * Servlet implementation class HouseUpdateServlet
 */
@WebServlet("/house/update")
public class HouseUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HouseUpdateServlet() {
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
		String hid = request.getParameter("h_id");
		Integer id = Integer.parseInt(hid);
		String hArea = request.getParameter("h_area");
		String hEstate = request.getParameter("h_estate");
		String hUnitNumber = request.getParameter("h_unitNumber");
		String hFloor = request.getParameter("h_floor");
		Integer hf = Integer.parseInt(hFloor);
		String hRoomNo = request.getParameter("h_roomNo");
		String hAcreage = request.getParameter("h_acreage");
		String hDirection = request.getParameter("h_direction");
		String hFitment = request.getParameter("h_fitment");
		String hIsDoubleAir = request.getParameter("h_isDoubleAir");
		String hLimit = request.getParameter("h_limit");
		Integer hl = Integer.parseInt(hLimit);
		String hFacility = request.getParameter("h_facility");
		String hPrice = request.getParameter("h_price");
		Double hp = Double.parseDouble(hPrice);
//		String hStatus= request.getParameter("");
		String hImg = request.getParameter("h_img");
		String hAddress = request.getParameter("h_address");
//		String hAddTime = request.getParameter("");
//		String hUpdateTime = request.getParameter("");
		House house = new House(id,hArea,hEstate,hUnitNumber,hf,hRoomNo,hAcreage,hDirection,hFitment,hIsDoubleAir,hl,hFacility,hp,hImg,hAddress);
	
		int num = houseService.update(house);
		if(num==1) {
			request.getRequestDispatcher("/house/find").forward(request, response);
		}else {
			request.setAttribute("msg", "无法修改");
			request.getRequestDispatcher("/view/house/update.jsp").forward(request, response);
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
