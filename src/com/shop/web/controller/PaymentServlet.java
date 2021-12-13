package com.shop.web.controller;

import com.shop.entity.Address;
import com.shop.entity.Member;
import com.shop.entity.Orders;
import com.shop.service.AddressService;
import com.shop.service.OrdersService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 保存订单数据到数据库，并跳转到支付界面
 */
@WebServlet("/payment")
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//
		String address_id = request.getParameter("address_id");
		String remark = request.getParameter("remark");

		if(address_id == null || address_id == ""){ //没有地址，提示
			request.setAttribute("msg", "结算前，请添加地址!");
			request.getRequestDispatcher("/orders.jsp").forward(request, response);
		}else {
			HttpSession session = request.getSession();
			Orders order = (Orders)session.getAttribute("curr_order");

			Member mbr = (Member)session.getAttribute("curr_mbr");
			order.setBuyer_id(mbr.getId());
			order.setRemark(remark);

			DateFormat df = new SimpleDateFormat("yyyyMMddHHmmsSSS");
			order.setNumber(df.format(new Date())); //生成一个有意义订单编号
			order.setStatus(2);

			AddressService addressService = new AddressService();
			Address address = addressService.findOne(Integer.valueOf(address_id));
			order.setContact(address.getContact());
			order.setMobile(address.getMobile());
			order.setStreet(address.getStreet());
			order.setZipcode(address.getZipcode());

			//保存订单
			OrdersService ordersService = new OrdersService();
			ordersService.save(order);

			//用户购物流程结束------>清除当前session中的购物车对象
			session.removeAttribute("cart");

			response.sendRedirect(request.getContextPath() + "/member/orders");
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
