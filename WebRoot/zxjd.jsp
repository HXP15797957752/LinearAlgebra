<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>在线解答</title>
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
								<li><a href="index.jsp">首      页 </a></li>
								<li><a href=" zjxx.jsp">章节学习 </a></li>
								<li><a href=" msjt.jsp">名师讲堂 </a></li>
								<li><a href=" zlxz.jsp">资料下载 </a></li>
								<li><a href=" tlsq.jsp">讨论社区 </a></li>
								<li class="active"><a href=" zxjd.jsp">在线解答 </a></li>
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
<div class="container" style="background:url(images/bj5.jpg);">
 <div class="main-head-section well well-large" style="background:url(images/bj5.jpg);">
		 		<div class="container" >
		 			<h3>在线解答</h3>
		 		</div><hr>
		 		</div>
		 		<div class="container">
		 
		 			<div class="col-md-4"><a href="hlsqz.jsp"><h4>行列式求值</h4></a></div>
		 			<div class="col-md-4"><a href="jxxfcz.jsp"><h4>解线性方程组</h4></a></div>
		 			<div class="col-md-4"><a href="jzjfcf.jsp"><h4>矩阵加法和乘法</h4></a></div>
		 			<div class="col-md-4"><a href="jzdzz.jsp"><h4>矩阵的转置</h4></a></div>
		 			<div class="col-md-4"><a href="sxnjz.jsp"><h4>实现逆矩阵</h4></a></div>
		 			<div class="col-md-4"><a href="qjzdz.jsp"><h4>求矩阵的秩</h4></a></div>
		 			<div class="col-md-4"><a href="xxxg.jsp"><h4>线性相关的判断</h4></a></div>
		 			<div class="col-md-4"><a href="jzdtzz.jsp"><h4>矩阵的特征值</h4></a></div>
		 			<div class="col-md-4"><a href="pdjzxs.jsp"><h4>判断两个矩阵是否相似</h4></a></div>
		 			
		 			</div>
<!-- 		 		<div class="col-md-4">
 -->		 			<!-- <li class="lid" class="b-tn"><div class="apply_btn">
								<form action="c:url value='/UserServlet'/>">
									<input type="button" value="行列式求值" onclik="window.location.href=hlsqz.jsp">
								</form>
							</div></li><hr/>		
							
					<li class="lid" class="b-tn"><div class="apply_btn">
								<form action="#">
									<input type="submit" value="解线性方程组">
								</form>
							</div></li><hr/>
					<li class="lid" class="b-tn"><div class="apply_btn">
								<form action="#">
									<input type="submit" value="矩阵加法和乘法">
								</form>
							</div></li>	   	<hr/>   
					</div>
					<div class="col-md-4">
		 			<li class="lid" class="b-tn"><div class="apply_btn">
								<form action="#">
									<input type="submit" value="矩阵的转置">
								</form>
							</div></li>	<hr/>			
					<li class="lid" class="b-tn"><div class="apply_btn">
								<form action="#">
									<input type="submit" value="实现逆矩阵">
								</form>
							</div></li><hr/>
					<li class="lid" class="b-tn"><div class="apply_btn">
								<form action="#">
									<input type="submit" value="求矩阵的秩">
								</form>
							</div></li>	<hr/>   	   
					</div>
					<div class="col-md-4">
		 			<li class="lid" class="b-tn"><div class="apply_btn">
								<form action="#">
									<input type="submit" value="线性相关的判断">
								</form>
							</div></li><hr/>				
					<li class="lid" class="b-tn"><div class="apply_btn">
								<form action="#">
									<input type="submit" value="矩阵的特征值">
								</form>
							</div></li><hr/>
					<li class="lid" class="b-tn"><div class="apply_btn">
								<form action="#">
									<input type="submit" value="判断两个矩阵是否相似">
								</form>
							</div></li>	<hr/>   	    -->
					       
		 		
<!-- </div>
 -->		<div class="contact_top">
			 		<div class="container">
			 			<div class="col-md-11 contact_left well well-large">
			 			<hr/>
			 				<h4>意见反馈</h4>
			 				<p>若所给出的答案有误，欢迎指正，届时我们将反馈意见发送至您的邮箱</p>"
							  <form action="<c:url value='/AdviseServlet'/>"  method="post">
								 <div class="form_details">
					                 <input type="text" class="text" value="姓名" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '姓名';}">
									 <input type="text" class="text" value="邮箱" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '邮箱';}">
							
									 <textarea value="意见反馈" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '意见反馈';}">意见反馈</textarea>
									 <div class="clearfix"> </div>
									 <div class="sub-button">
									 	<input type="submit" value="  提  交  ">
									 </div>
						          </div>
						       </form>
					        </div>
					       
						</div>
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