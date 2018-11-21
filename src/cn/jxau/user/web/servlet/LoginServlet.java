package cn.jxau.user.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import cn.itcast.commons.CommonUtils;
import cn.jxau.user.domain.User;
import cn.jxau.user.service.*;

public class LoginServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		UserService userService = new UserService();
		
		User form = CommonUtils.toBean(request.getParameterMap(), User.class);
		
		try {
			User user = userService.login(form);
			request.getSession().setAttribute("username", user.getName());
			response.sendRedirect(request.getContextPath() + "/index.jsp");
		} catch (Exception e) {
			request.setAttribute("msg", e.getMessage());
			request.setAttribute("form", form);
			request.getRequestDispatcher("/login.jsp").forward(request, response);
			return;
		}
	}
}
