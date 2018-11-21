package cn.jxau.web.function.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.commons.CommonUtils;
import cn.jxau.user.domain.Matrix;

public class JxxfczServlet extends HttpServlet {


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		Matrix form = CommonUtils.toBean(request.getParameterMap(), Matrix.class);
		int y1,y2,y3;
		int x,y,z;//计算公式x=d1/d;y=d2/d;z=d3/d
		try {
			String str=null;
			y1=Integer.valueOf(request.getParameter("y1"));
			y2=Integer.valueOf(request.getParameter("y2"));
			y3=Integer.valueOf(request.getParameter("y3"));
			int d=form.getT1()*form.getT5()*form.getT9()+form.getT2()*form.getT6()*form.getT7()+form.getT3()*form.getT4()*form.getT8()-form.getT1()*form.getT6()*form.getT8()-form.getT2()*form.getT4()*form.getT9()-form.getT3()*form.getT5()*form.getT7();
			int d1=y1*form.getT5()*form.getT9()+form.getT2()*form.getT6()*y3+form.getT3()*y2*form.getT8()-y1*form.getT6()*form.getT8()-form.getT2()*y2*form.getT9()-form.getT3()*form.getT5()*y3;
			int d2=form.getT1()*y2*form.getT9()+y1*form.getT6()*form.getT7()+form.getT3()*form.getT4()*y3-form.getT1()*form.getT6()*y3-y1*form.getT4()*form.getT9()-form.getT3()*y2*form.getT7();
			int d3=form.getT1()*form.getT5()*y3+form.getT2()*y2*form.getT7()+y1*form.getT4()*form.getT8()-form.getT1()*y2*form.getT8()-form.getT2()*form.getT4()*y3-y1*form.getT5()*form.getT7();
			
			if(d==0){
				str="结果为：此线性方程组无解";
			}else{		
				x=d1/d;
				y=d2/d;
				z=d3/d;
				str="线性方程组的解为："+"x="+x+"y="+y+"z="+z;
			}
		
			
			request.setAttribute("value",str);
			
			request.getRequestDispatcher("/jxxfcz.jsp").forward(request, response);
		} catch (Exception e) {
			request.setAttribute("msg", "输入的数据有误或为空，请重新输入！");
			request.getRequestDispatcher("/jxxfcz.jsp").forward(request, response);
			return;
		}
	}

}
