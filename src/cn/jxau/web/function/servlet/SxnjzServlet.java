package cn.jxau.web.function.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.commons.CommonUtils;
import cn.jxau.user.domain.Matrix;

public class SxnjzServlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		Matrix form = CommonUtils.toBean(request.getParameterMap(), Matrix.class);
	
		try {
			int n=form.getT1()*form.getT4()-form.getT2()*form.getT3();
			
			request.setAttribute("value","逆矩阵为：");
			request.setAttribute("value1",form.getT4()/n+"  "+(-form.getT2())/n);
			request.setAttribute("value2",(-form.getT3())/n+"  "+form.getT1()/n);
			request.getRequestDispatcher("/sxnjz.jsp").forward(request, response);
			
		} catch (Exception e) {
			request.setAttribute("msg", e.getMessage());
			request.setAttribute("form", form);
			request.getRequestDispatcher("/sxnjz.jsp").forward(request, response);
			return;
	}
	}

}
