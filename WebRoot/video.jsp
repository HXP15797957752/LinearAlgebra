<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>名师讲堂</title>
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
						<a href="index.html"><img src="images/logo.png" class="img-responsive" alt=""></a>
					</div>
					<div class="head-nav">
						<span class="menu"> </span>
							<ul class="cl-effect-3">
								<li><a href="index.jsp">首      页 </a></li>
								<li><a href=" zjxx.jsp">章节学习 </a></li>
								<li class="active"><a href=" msjt.jsp">名师讲堂 </a></li>
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
<!-- Portfolio Starts Here -->
	<div class="portfolios entertain_box  wow fadeInUp" data-wow-delay="0.4s" id="project" style="background:url(images/bj4.jpg);">
		<div class="container">
			<video id="Html5Video" class="video-js vjs-default-skin" preload controls autoplay  width="100%"  height="450px"
		        poster="assets/images/movie/poster.jpg">   
		            <source id="src1" src="video/xxds2.mp4" type='video/mp4; codecs="avc1.42E01E, mp4a.40.2"' />  
		            <source id="src2" src="video/xxds2.ogv" type='video/ogg; codecs="theora, vorbis"' />  
		            <source id="src3" src="video/xxds2.webm" type='video/webm; codecs="vp8, vorbis"' />  
			     您的浏览器不支持 video 标签。  
			 </video>
	</div>
</div>
<link rel="stylesheet" href="css/swipebox.css">
	<script src="js/jquery.swipebox.min.js"></script> 
	    <script type="text/javascript">
			jQuery(function($) {
				$(".swipebox").swipebox();
			});
		</script>
	<!-- Portfolio Ends Here -->
<!-- footer-top -->
<div class="footer-top">
	<div class="container">
	</div>
</div>
<!-- footer-top -->

</body>
</html>