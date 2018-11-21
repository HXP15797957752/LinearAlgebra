package cn.jxau.web.function.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.commons.CommonUtils;
import cn.jxau.user.domain.Matrix;

public class PdjzxsServlet extends HttpServlet {

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
			int str1 = 0;
			int str2 = 0;
			int x;
			
			for(x=-1000;x<1000;x++){
				int n1=(form.getT1()-x)*(form.getT5()-x)*(form.getT9()-x)+form.getT2()*form.getT6()*form.getT7()+form.getT3()*form.getT4()*form.getT8()-(form.getT1()-x)*form.getT6()*form.getT8()-form.getT2()*form.getT4()*(form.getT9()-x)-form.getT3()*(form.getT5()-x)*form.getT7();
				int n2=(form2.getT1()-x)*(form2.getT5()-x)*(form2.getT9()-x)+form2.getT2()*form2.getT6()*form2.getT7()+form2.getT3()*form2.getT4()*form2.getT8()-(form2.getT1()-x)*form2.getT6()*form2.getT8()-form2.getT2()*form2.getT4()*(form2.getT9()-x)-form2.getT3()*(form2.getT5()-x)*form2.getT7();
				 	
				if(n1==0){
				str1+=str1;
				}
				if(n2==0){
					str2+=str2;
					}
			}
			if(str1==str2){
				request.setAttribute("value","输入的两个矩阵相似");
			}else{
				request.setAttribute("value","输入的两个矩阵不相似");
			}
		
			request.getRequestDispatcher("/pdjzxs.jsp").forward(request, response);
		} catch (Exception e) {
			request.setAttribute("msg", "输入的数据有误或为空，请重新输入！");
			request.setAttribute("form", form);
			request.getRequestDispatcher("/pdjzxs.jsp").forward(request, response);
			return;
	}
	}

}
