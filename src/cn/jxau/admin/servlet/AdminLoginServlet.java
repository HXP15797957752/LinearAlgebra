package cn.jxau.admin.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import cn.itcast.commons.CommonUtils;
import cn.jax.admin.domain.Admin;
import cn.jxau.admin.dao.AdminDao;
import cn.jxau.admin.service.AdminService;
import cn.jxau.user.domain.User;
import cn.jxau.user.service.*;

public class AdminLoginServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		AdminService adminservice=new AdminService();
		Admin form = CommonUtils.toBean(request.getParameterMap(), Admin.class);
	
		try {
			Admin admin = adminservice.login(form);
			request.getSession().setAttribute("id", admin.getId());
			response.sendRedirect(request.getContextPath() + "/adminindex.jsp");
		} catch (Exception e) {
			request.setAttribute("msg", e.getMessage());
			request.setAttribute("form", form);
			request.getRequestDispatcher("/adminlogin.jsp").forward(request, response);
			return;
		}
	}
}
