package cn.jxau.web.function.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.commons.CommonUtils;
import cn.jxau.user.domain.Matrix;

public class JzdzzServlet extends HttpServlet {

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		Matrix form = CommonUtils.toBean(request.getParameterMap(), Matrix.class);
	
		try {
			request.setAttribute("value", "转置后的矩阵为：");
			request.setAttribute("value1",form.getT1()+"  "+form.getT4()+"  "+form.getT7());
			request.setAttribute("value2",form.getT2()+"  "+form.getT5()+"  "+form.getT8());
			request.setAttribute("value3",form.getT3()+"  "+form.getT6()+"  "+form.getT9());

			request.getRequestDispatcher("/jzdzz.jsp").forward(request, response);
		} catch (Exception e) {
			request.setAttribute("msg", e.getMessage());
			request.getRequestDispatcher("/jzdzz.jsp").forward(request, response);
			return;
	}
		
	
	}

}
