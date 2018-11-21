package cn.jxau.web.function.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.commons.CommonUtils;
import cn.jxau.user.domain.Matrix;

public class Jzjfcf2Servlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		Matrix form = CommonUtils.toBean(request.getParameterMap(), Matrix.class);
		Matrix form2=new Matrix();
		try {
			form2.setT1(Integer.valueOf(request.getParameter("t12").trim()));
			form2.setT2(Integer.valueOf(request.getParameter("t22").trim()));
			form2.setT3(Integer.valueOf(request.getParameter("t32").trim()));
			form2.setT4(Integer.valueOf(request.getParameter("t42").trim()));
			form2.setT5(Integer.valueOf(request.getParameter("t52").trim()));
			form2.setT6(Integer.valueOf(request.getParameter("t62").trim()));
			form2.setT7(Integer.valueOf(request.getParameter("t72").trim()));
			form2.setT8(Integer.valueOf(request.getParameter("t82").trim()));
			form2.setT9(Integer.valueOf(request.getParameter("t92").trim()));
			
			
			int n1=form.getT1()*form2.getT1()+form.getT2()*form2.getT4()+form.getT3()*form2.getT7();
			int n2=form.getT1()*form2.getT2()+form.getT2()*form2.getT5()+form.getT3()*form2.getT8();
			int n3=form.getT1()*form2.getT3()+form.getT2()*form2.getT6()+form.getT3()*form2.getT9();
			int n4=form.getT4()*form2.getT1()+form.getT5()*form2.getT4()+form.getT6()*form2.getT7();
			int n5=form.getT4()*form2.getT2()+form.getT5()*form2.getT5()+form.getT6()*form2.getT8();
			int n6=form.getT4()*form2.getT3()+form.getT5()*form2.getT6()+form.getT6()*form2.getT9();
			int n7=form.getT7()*form2.getT1()+form.getT8()*form2.getT4()+form.getT9()*form2.getT7();
			int n8=form.getT7()*form2.getT2()+form.getT8()*form2.getT5()+form.getT9()*form2.getT8();
			int n9=form.getT7()*form2.getT3()+form.getT8()*form2.getT6()+form.getT9()*form2.getT9();
			
			request.setAttribute("value", "结果矩阵为：");
			request.setAttribute("value1f",n1+"  "+n2+"  "+n3);
			request.setAttribute("value2f",n4+"  "+n5+"  "+n6);
			request.setAttribute("value3f",n7+"  "+n8+"  "+n9);
			

			request.getRequestDispatcher("/jzjfcf.jsp").forward(request, response);
		} catch (Exception e) {
			request.setAttribute("msg2", "输入的数据有误或为空，请重新输入！");
			request.getRequestDispatcher("/jzjfcf.jsp").forward(request, response);
			return;
	}
	}

}
