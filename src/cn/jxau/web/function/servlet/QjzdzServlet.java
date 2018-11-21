package cn.jxau.web.function.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.commons.CommonUtils;
import cn.jxau.user.domain.Matrix;
import cn.jxau.user.other.MatrixRank;

public class QjzdzServlet extends HttpServlet {

	//求矩阵的秩
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		Matrix form = CommonUtils.toBean(request.getParameterMap(), Matrix.class);
		double[][]array={ {form.getT1(),form.getT2(),form.getT3()},{form.getT4(),form.getT5(),form.getT6()},{form.getT7(),form.getT8(),form.getT9()} };
		String str;
		try {
			int n=MatrixRank.Rank(array, -1, 3);
			str="矩阵的秩为："+n;
			request.setAttribute("value",str);
			
			request.getRequestDispatcher("/qjzdz.jsp").forward(request, response);
		} catch (Exception e) {
			request.setAttribute("msg", "输入的数据有误或为空，请重新输入！");
			request.setAttribute("form", form);
			request.getRequestDispatcher("/qjzdz.jsp").forward(request, response);
			return;
	}
	}

}
