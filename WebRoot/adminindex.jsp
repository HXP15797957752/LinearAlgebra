<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="cn.jxau.user.domain.User"%>
<%@ page import="cn.jxau.user.dao.UserDao"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>后台管理</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Muster Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href='http://fonts.useso.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<script src="js/jquery.min.js"></script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />		
</head>
<body>
<!-- header -->
	<div class="header">
			<div class="header-top">
				<div class="container">
					<img src="images/header.png" class="img-responsive" alt="">
					<h3>线性代数学习网站后台管理</h3>
				</div>
			</div>
			<div class="header-bottom">
				<div class="container">
					<div class="logo">
						<a href="adminindex.jsp"><img src="images/logo.png" class="img-responsive" alt=""></a>
					</div>
					<div class="head-nav">
						<span class="menu"> </span>
						
								<!-- script-for-nav -->
							<script>
								$( "span.menu" ).click(function() {
								  $( ".head-nav ul" ).slideToggle(300, function() {
									// Animation complete.
								  });
								});
							</script>
						<!-- script-for-nav --> 
					</div>
				
					<div class="clearfix"> </div>
				</div>
			</div>
	</div>
<!-- header -->
<div class="col-md-1"></div>
		<div class="col-md-10"><hr>
		<div class="well well-large"><p style="color: red; font-size: 11pt; font-weight: 900;">${msg}</p></div>
			<div class="well well-large">	
			<form action="<c:url value='/FindUserServlet'/>" method="post">
					<h3>查询用户</h3>				
						账号：<input type="text" name="id" value=" ">
					
					   <input type="submit" value="查询">
					   <div class="clearfix"> </div>
				</form>
				<a href="findalluser.jsp">查询所有</a>
				
				   </div>
				   
			<div class="well well-large">	
			<form action="<c:url value='/AddServlet'/>" method="post">
					<h3>添加用户</h3>		
						<h5>请输入添加用户的账号：</h5>		
						账号：<input type="text" name="id" value=" "> <br/>
						姓名：<input type="text" name="name" value=""> <br/>
						学校：<input type="text" name="school" value=" "> <br/>
						邮箱：<input type="text" name="email" value=""><br/>
						密码：<input type="text" name="password" value=""><br/>
						确认密码：<input type="text" name="repassword" value=""><br/>
					   <input type="submit" value="添加">
					   <div class="clearfix"> </div>
					   </form>
				
					
				   </div>
				   <div class="well well-large">	
					<form action="<c:url value='/DeleteServlet'/>" method="post">
							<h3>删除用户</h3>				
								<h5>请输入删除用户的账号：</h5>
								账号：<input type="text" name="id" value=""> <br/>
						
							   <input type="submit" value="删除">
							   <div class="clearfix"> </div>
						</form>
				   </div>
				    <div class="well well-large">	
					<form action="<c:url value='/UpdateServlet'/>" method="post">
							<h3>修改用户</h3>				
								<h5>请输入修改用户的账号：</h5>
								账号：<input type="text" name="id" value=""> <br/>
						
							   <input type="submit" value="修改">
							   <div class="clearfix"> </div>
						</form>
				   </div>
				    <div class="well well-large">	
						<h5>点击进入</h5><a href="wdgl.jsp"><h3>问答管理</h3></a>
				   </div>
				    <div class="well well-large">	
					<form action="<c:url value='/UploadServlet'/>" enctype="multipart/form-data" method="post">
							<h3>上传后台数据</h3>				
								
								数据文件：<input type="file" name="file"><br/>
							   <input type="submit" value="上传">
							   <div class="clearfix"> </div>
						</form>
				   </div>
		   </div>


<!-- footer-top -->
<div class="footer-top">
	<div class="container">
	</div>
</div>
<!-- footer-top -->
</body>
</html>