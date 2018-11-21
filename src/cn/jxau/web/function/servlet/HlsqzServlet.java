package cn.jxau.web.function.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.commons.CommonUtils;
import cn.jxau.user.domain.Matrix;

public class HlsqzServlet extends HttpServlet {

	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		req.getRequestDispatcher("/hlsqz.jsp").forward(req, resp);

	
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		Matrix form = CommonUtils.toBean(request.getParameterMap(), Matrix.class);
	
		try {
			int n=form.getT1()*form.getT5()*form.getT9()+form.getT2()*form.getT6()*form.getT7()+form.getT3()*form.getT4()*form.getT8()-form.getT1()*form.getT6()*form.getT8()-form.getT2()*form.getT4()*form.getT9()-form.getT3()*form.getT5()*form.getT7();
			String matrix=null;
			matrix="行列式的值为："+n;
			request.setAttribute("value",matrix);
			
			request.getRequestDispatcher("/hlsqz.jsp").forward(request, response);
		} catch (Exception e) {
			request.setAttribute("msg", e.getMessage());
			request.setAttribute("form", form);
			request.getRequestDispatcher("/hlsqz.jsp").forward(request, response);
			return;
	}
	}

}
