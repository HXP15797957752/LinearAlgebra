package cn.jxau.admin.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.commons.CommonUtils;
import cn.jxau.user.dao.UserDao;
import cn.jxau.user.domain.User;
import cn.jxau.user.service.UserService;

public class FindUserServlet extends HttpServlet {

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		UserDao userdao=new UserDao();
		
		User user=new User();
		try {
	   		
	   		user=userdao.findById(request.getParameter("id"));
		   	if(user==null){
		   		request.setAttribute("msg", "此用户不存在或输入有误！");
		   		request.getRequestDispatcher("/adminindex.jsp").forward(request, response);
		   	}else{
		   		request.getSession().setAttribute("id", user.getId());
		   		request.getSession().setAttribute("name", user.getName());
		   		request.getSession().setAttribute("school", user.getSchool());
		   		request.getSession().setAttribute("email", user.getEmail());
		   		response.sendRedirect(request.getContextPath() + "/finduser.jsp");
		   	}
			
		} catch (Exception e) {
			request.setAttribute("msg", e.getMessage());
			request.setAttribute("user", user);
			request.getRequestDispatcher("/adminindex.jsp").forward(request, response);
			return;
		}
	}

}
