package cn.jxau.admin.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.commons.CommonUtils;
import cn.jxau.admin.dao.AdminDao;
import cn.jxau.user.dao.UserDao;
import cn.jxau.user.domain.User;
import cn.jxau.user.service.UserService;

public class DeleteServlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		AdminDao admindao=new AdminDao();
		
		
		try {
			int n=admindao.deleteById(request.getParameter("id"));
			if(n>0){
				request.setAttribute("msg", "已成功删除用户！");
			}else{
				request.setAttribute("msg", "删除用户失败，该用户不存在或输入错误，请重新操作！");
			}
			
			response.sendRedirect(request.getContextPath() + "/adminindex.jsp");
		} catch (Exception e) {
			request.setAttribute("msg", "删除用户失败，该用户不存在或输入错误，请重新操作！");
			
			request.getRequestDispatcher("/adminindex.jsp").forward(request, response);
			return;
		}
	}

}
