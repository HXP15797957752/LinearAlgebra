<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>线性代数</title>
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
			<!-- <div class="header-top">
				<div class="container">
					<img src="images/header.png" class="img-responsive" alt="">

				</div>
			</div> -->
			<div class="header-bottom">
				<div class="container">
					<div class="logo">
						<a href="index.jsp"><img src="images/logo.png" class="img-responsive" alt=""></a>
					</div>
					<div class="head-nav">
						<span class="menu"> </span>
							<ul class="cl-effect-3">
								<li class="active"><a href="index.jsp">首      页 </a></li>
								<li><a href=" zjxx.jsp">章节学习 </a></li>
								<li><a href=" msjt.jsp">名师讲堂 </a></li>
								<li><a href=" zlxz.jsp">资料下载 </a></li>
								<li><a href=" tlsq.jsp">讨论社区 </a></li>
								<li><a href=" zxjd.jsp">在线解答 </a></li>
									<div class="clearfix"> </div>
									
							</ul>
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
					<div class="header-right1">
						<c:choose>
							<c:when test="${empty sessionScope.username }">
								<h5>您好，游客</h5>
								<li><a href="login.jsp">登录</a></li>
								<li><a href="register.jsp">注册</a></li>
							</c:when>
							<c:otherwise>
								<h4>您好，${sessionScope.username }</h4>
							</c:otherwise>
						</c:choose>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
	</div>
<!-- header -->
<!-- registration -->
	<div class="main-1">
		<!-- <div class="container"> -->
		<div class="col-md-1"></div>
		<div class="col-md-10"><hr>
			<div class="well well-large">	
			<form action="<c:url value='/JzjfcfServlet'/>" method="post">
					<h3>矩阵的加法和乘法</h3>
					<h5>请输入相加的两个矩阵</h5>
				
					<p style="color: red; font-size: 11pt; font-weight: 900;">${msg}</p>
						<h5>矩阵一</h5>
						<input type="text" name="t1" value="${form.t1} "> 
						<input type="text" name="t2" value="${form.t2}"> 
						<input type="text" name="t3" value="${form.t3} "> <br/>
						<input type="text" name="t4" value="${form.t4} "> 
						<input type="text" name="t5" value="${form.t5}"> 
						<input type="text" name="t6" value="${form.t6} "> <br/>
				     	<input type="text" name="t7" value="${form.t7} "> 
						<input type="text" name="t8" value="${form.t8}"> 
						<input type="text" name="t9" value="${form.t9} "> <br/>
						
						<h5>矩阵二</h5>
						<input type="text" name="t12" value="${form2.t1} "> 
						<input type="text" name="t22" value="${form2.t2}"> 
						<input type="text" name="t32" value="${form2.t3} "> <br/>
						<input type="text" name="t42" value="${form2.t4} "> 
						<input type="text" name="t52" value="${form2.t5}"> 
						<input type="text" name="t62" value="${form2.t6} "> <br/>
				     	<input type="text" name="t72" value="${form2.t7} "> 
						<input type="text" name="t82" value="${form2.t8}"> 
						<input type="text" name="t92" value="${form2.t9} "> <br/>
				<div class="clearfix"> </div>
				
					   <input type="submit" value="计算加法">
					 
					   <div class="clearfix"> </div>
				
				
				</form>
				<p style="color: red; font-size: 11pt; font-weight: 900;">${value}</p><br/>
				<p style="color: red; font-size: 11pt; font-weight: 900;">${value1}</p><br/>
				<p style="color: red; font-size: 11pt; font-weight: 900;">${value2}</p><br/>
			    <p style="color: red; font-size: 11pt; font-weight: 900;">${value3}</p>
				
				<!-- 矩阵相乘 -->
				<form action="<c:url value='/Jzjfcf2Servlet'/>" method="post">
					
					<h5>请输入相乘的两个矩阵</h5>
				
					<p style="color: red; font-size: 11pt; font-weight: 900;">${msg2}</p>
						<h5>矩阵一</h5>
						<input type="text" name="t1" value="${form.t1} "> 
						<input type="text" name="t2" value="${form.t2}"> 
						<input type="text" name="t3" value="${form.t3} "> <br/>
						<input type="text" name="t4" value="${form.t4} "> 
						<input type="text" name="t5" value="${form.t5}"> 
						<input type="text" name="t6" value="${form.t6} "> <br/>
				     	<input type="text" name="t7" value="${form.t7} "> 
						<input type="text" name="t8" value="${form.t8}"> 
						<input type="text" name="t9" value="${form.t9} "> <br/>
						
						<h5>矩阵二</h5>
						<input type="text" name="t12" value="${form2.t1} "> 
						<input type="text" name="t22" value="${form2.t2}"> 
						<input type="text" name="t32" value="${form2.t3} "> <br/>
						<input type="text" name="t42" value="${form2.t4} "> 
						<input type="text" name="t52" value="${form2.t5}"> 
						<input type="text" name="t62" value="${form2.t6} "> <br/>
				     	<input type="text" name="t72" value="${form2.t7} "> 
						<input type="text" name="t82" value="${form2.t8}"> 
						<input type="text" name="t92" value="${form2.t9} "> <br/>
				<div class="clearfix"> </div>
				
					   <input type="submit" value="计算乘法">
					   <div class="clearfix"> </div>
				
				
				</form>
				
				<p style="color: red; font-size: 11pt; font-weight: 900;">${value}</p><br/>
				<p style="color: red; font-size: 11pt; font-weight: 900;">${value1f}</p><br/>
				<p style="color: red; font-size: 11pt; font-weight: 900;">${value2f}</p><br/>
			    <p style="color: red; font-size: 11pt; font-weight: 900;">${value3f}</p>
				
				
		   </div>
		   </div>
		<!--  </div> -->
	</div>
<!-- registration -->

<!-- footer-top -->
<div class="footer-top">
	<div class="container">
	</div>
</div>
<!-- footer-top -->

</body>
</html>