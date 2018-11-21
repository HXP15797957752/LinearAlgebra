package cn.jxau.admin.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.jxau.admin.dao.AdminDao;
import cn.jxau.user.dao.UserDao;
import cn.jxau.user.domain.User;

public class UpdateServlet2 extends HttpServlet {

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		AdminDao admindao=new AdminDao();
		
		User user=new User();
		try {
	   		
	   		admindao.update(request.getParameter("id").trim(),request.getParameter("name"),request.getParameter("school"),request.getParameter("email"));
	   		request.setAttribute("msg", "已成功修改用户");
			response.sendRedirect(request.getContextPath() + "/adminindex.jsp");
		} catch (Exception e) {
			request.setAttribute("msg", "修改用户失败！");
			request.getRequestDispatcher("/adminindex.jsp").forward(request, response);
			return;
		}
	}

}
