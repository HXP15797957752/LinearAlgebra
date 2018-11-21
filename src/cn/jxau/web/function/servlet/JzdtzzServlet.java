package cn.jxau.web.function.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.commons.CommonUtils;
import cn.jxau.user.domain.Matrix;

public class JzdtzzServlet extends HttpServlet {

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		Matrix form = CommonUtils.toBean(request.getParameterMap(), Matrix.class);
		String str="特征值为：";
		try {
			int x;
			
			for(x=-1000;x<1000;x++){
				int n=(form.getT1()-x)*(form.getT5()-x)*(form.getT9()-x)+form.getT2()*form.getT6()*form.getT7()+form.getT3()*form.getT4()*form.getT8()-(form.getT1()-x)*form.getT6()*form.getT8()-form.getT2()*form.getT4()*(form.getT9()-x)-form.getT3()*(form.getT5()-x)*form.getT7();
				
				if(n==0){
				str=str+"    "+x;
				}
			}
		
			request.setAttribute("value",str);
			
			request.getRequestDispatcher("/jzdtzz.jsp").forward(request, response);
		} catch (Exception e) {
			request.setAttribute("msg", e.getMessage());
			request.setAttribute("form", form);
			request.getRequestDispatcher("/jzdtzz.jsp").forward(request, response);
			return;
	}
	}

	

}
