package cn.jxau.web.function.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.commons.CommonUtils;
import cn.jxau.user.domain.Question;
import cn.jxau.user.domain.User;
import cn.jxau.user.service.QuestionService;
import cn.jxau.user.service.UserService;

public class QuestionServlet extends HttpServlet {

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		QuestionService questionService = new QuestionService();
		Question form=new Question();
		Calendar c = Calendar.getInstance(); 
		c.setTimeInMillis(new Date().getTime());
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = dateFormat.format(c.getTime());
	
		try {
			
			form.setName(request.getParameter("name"));
			form.setQuestion(request.getParameter("question"));
			form.setSort(request.getParameter("sort"));
			form.setTime(time);
			if(!(form.getSort().equals("分类"))||!(form.getQuestion().equals("请输入问题"))){
				questionService.add(form);
			}else{
				request.setAttribute("msg", "提问失败，请正确输入数据！");
			}
			
			request.getRequestDispatcher("/tlsq.jsp").forward(request, response);
			} catch (Exception e) {
			request.setAttribute("msg", e.getMessage());
			request.setAttribute("form", form);
			request.getRequestDispatcher("/tlsq.jsp").forward(request, response);
			return;
		}
		
	}

}
