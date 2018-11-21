package cn.jxau.user.web.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.commons.CommonUtils;
import cn.jxau.user.domain.User;
import cn.jxau.user.service.UserException;
import cn.jxau.user.service.UserService;


public class RegisterServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");//处理post请求编码
		response.setContentType("text/html;charset=utf-8");//处理响应编码
		
		UserService userService = new UserService();
		
		User form = CommonUtils.toBean(request.getParameterMap(), User.class);
		/*
		 * 前端校验
		 * 使用map类型来做错误信息集！
		 * key为当前表单项名称，name、password
		 * value为错误信息
		 */
		// 创建错误集对象
		Map<String,String> errors = new HashMap<String,String>();
		
		/*
		 * 校验id
		 * 1. 非空校验
		 * 2. 长度校验：用户名长度必须在3~15之间
		 */
		String id = form.getId();
		if(id == null || id.trim().isEmpty()) {//非空校验
			errors.put("id", "用户名不能为空！");
		} else if(id.length() < 3 || id.length() > 15) {//长度校验
			errors.put("id", "账号长度必须在3~15之间！");
		}
		
		// 校验密码
		String password = form.getPassword();
		if(password == null || password.trim().isEmpty()) {//非空校验
			errors.put("password", "密码不能为空！");
		} else if(password.length() < 3 || password.length() > 15) {//长度校验
			errors.put("password", "密码长度必须在3~15之间！");
		}
		
		// 校验确认密码
		String repassword = form.getRepassword();
		if(repassword == null || repassword.trim().isEmpty()) {//非空校验
			errors.put("repassword", "确认密码不能为空！");
		} else if(!password.equals(repassword)) {//是否相同校验
			errors.put("repassword", "两次密码输入不一致！");
		}
		
		
		
		if(errors.size() > 0) {
			// 保存errors到request域
			request.setAttribute("errors", errors);
			// 保存表单数据，为了页面的回显
			request.setAttribute("form", form);
			// 转发到regist.jsp
			request.getRequestDispatcher("/register.jsp").forward(request, response);
			return;
		}
		
		try {
			userService.register(form);
			request.setAttribute("msg", "注册成功，请登录");
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		} catch (UserException e) {
			request.setAttribute("msg", e.getMessage());
			request.setAttribute("form", form);
			request.getRequestDispatcher("/register.jsp").forward(request, response);
			return;
		}
	}
}
