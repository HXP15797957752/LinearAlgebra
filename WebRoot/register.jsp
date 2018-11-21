<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>注册</title>
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
			<form action="<c:url value='/RegisterServlet'/>" method="post">
				 <div class="register-top-grid">
					<h3>个人信息</h3>
					 <div class="wow fadeInLeft" data-wow-delay="0.4s">
						<span>姓 名<label>*</label></span>
						<input type="text" name="name" value="${form.name} "> 
					 </div>
					 <div class="wow fadeInRight" data-wow-delay="0.4s">
						<span>学 校<label>*</label></span>
						<input type="text" name="school" value="${form.school}"> 
					 </div>
					 <div class="wow fadeInRight" data-wow-delay="0.4s">
						 <span>邮 箱<label>*</label></span>
						 <input type="text" name="email" value="${form.email} "> 
					 </div>
					 <div class="clearfix"> </div>
					   <a class="news-letter" href="#">
						 <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i> </i>接收邮箱信息</label>
					   </a>
					 </div>
				     <div class="register-bottom-grid">
						    <h3>登录信息</h3>
							 <div class="wow fadeInRight" data-wow-delay="0.4s">
								 <span>账 号<label>*</label></span>
								 <input type="text" name="id" value="${form.id} ">
							 </div>
							 <div class="wow fadeInLeft" data-wow-delay="0.4s">
								<span>密 码<label>*</label></span>
								<input type="password" name="password" value="${form.password }">
							 </div>
							 <div class="wow fadeInRight" data-wow-delay="0.4s">
								<span>确认密码<label>*</label></span>
								<input type="password" name="repassword" value="${form.repassword }">
							 </div>
					 </div>
				<div class="clearfix"> </div>
				<div class="register-but">
				  
					   <input type="submit" value="提交">
					   <div class="clearfix"> </div>
				</div>
				
				</form>
				
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