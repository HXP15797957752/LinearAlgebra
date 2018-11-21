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

public class JzjfcfServlet extends HttpServlet {

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
			
			form.setT1(form.getT1()+form2.getT1());
			form.setT2(form.getT2()+form2.getT2());
			form.setT3(form.getT3()+form2.getT3());
			form.setT4(form.getT4()+form2.getT4());
			form.setT5(form.getT5()+form2.getT5());
			form.setT6(form.getT6()+form2.getT6());
			form.setT7(form.getT7()+form2.getT7());
			form.setT8(form.getT8()+form2.getT8());
			form.setT9(form.getT9()+form2.getT9());
		
			request.setAttribute("value", "结果矩阵为：");
			request.setAttribute("value1",form.getT1()+"  "+form.getT4()+"  "+form.getT7());
			request.setAttribute("value2",form.getT2()+"  "+form.getT5()+"  "+form.getT8());
			request.setAttribute("value3",form.getT3()+"  "+form.getT6()+"  "+form.getT9());

			request.getRequestDispatcher("/jzjfcf.jsp").forward(request, response);
		} catch (Exception e) {
			request.setAttribute("msg", "输入的数据有误或为空，请重新输入！");
			request.getRequestDispatcher("/jzjfcf.jsp").forward(request, response);
			return;
	}
	}

}
