<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>资料下载</title>
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
								<li class="active"><a href=" zlxz.jsp">资料下载 </a></li>
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
<!-- ssuo -->

	<div class="container" style="background:url(images/bj3.jpg);">
			<div class="col-md-7"><div><h3>资料下载</h3></div></div>
			<div class="col-md-5">
			<div  class="b-search">
							<form>
								<input type="text" value="搜索" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '搜索';}">
								<input type="submit" value="">
							</form>
						</div>
						</div>
		</div>
	<!-- ssuo -->
	<hr>
<%
String getState=(String)session.getAttribute("exportForm");
session.setAttribute("exportForm", null);
if(getState!=null){
	out.clearBuffer();
	out=pageContext.pushBody();
}
 %>
<div class="container" style="background:url(images/bj3.jpg);">
		<div class="col-md-12"><h4>章节测试卷</h4></div>
		<div class="col-md-1"></div>
		<div class="col-md-3"><div><h5>线性代数第一章测试卷</h5></div></div>
		<div class="col-md-2"><form action="<c:url value='/Download1Servlet'/>"><button type="submit" class="btn btn-warning">下载</button></form></div>

		<div class="col-md-1"></div>
		<div class="col-md-3"><div><h5>线性代数第二章测试卷</h5></div></div>
		<div class="col-md-2"><form action="<c:url value='/Download1Servlet'/>"><button type="submit" class="btn btn-warning">下载</button></form></div>
		<div class="col-md-12"><br/></div>
		<div class="col-md-1"></div>
		<div class="col-md-3"><div><h5>线性代数第三章测试卷</h5></div></div>
		<div class="col-md-2"><form action="<c:url value='/Download1Servlet'/>"><button type="submit" class="btn btn-warning">下载</button></form></div>

		<div class="col-md-1"></div>
		<div class="col-md-3"><div><h5>线性代数第四章测试卷</h5></div></div>
		<div class="col-md-2"><form action="<c:url value='/Download1Servlet'/>"><button type="submit" class="btn btn-warning">下载</button></form></div>
		<div class="col-md-12"><br/></div>
		<div class="col-md-1"></div>
		<div class="col-md-3"><div><h5>线性代数第五章测试卷</h5></div></div>
		<div class="col-md-2"><form action="<c:url value='/Download1Servlet'/>"><button type="submit" class="btn btn-warning">下载</button></form></div>

		<div class="col-md-1"></div>
		<div class="col-md-3"><div><h5>线性代数第六章测试卷</h5></div></div>
		<div class="col-md-2"><form action="<c:url value='/Download1Servlet'/>"><button type="submit" class="btn btn-warning">下载</button></form></div>
		<div class="col-md-12"><br/></div>
</div>
<div class="col-md-12"><hr><br/></div>
<div class="container" style="background:url(images/bj3.jpg);">
<div class="col-md-12"><h4>期末模拟卷</h4></div>
		<div class="col-md-1"></div>
		<div class="col-md-3"><div><h5>线性代数期末模拟卷（一）及答案</h5></div></div>
		<div class="col-md-2"><form action="<c:url value='/Download1Servlet'/>"><button type="submit" class="btn btn-warning">下载</button></form></div>

		<div class="col-md-1"></div>
		<div class="col-md-3"><div><h5>线性代数期末模拟卷（二）及答案</h5></div></div>
		<div class="col-md-2"><form action="<c:url value='/Download1Servlet'/>"><button type="submit" class="btn btn-warning">下载</button></form></div>
		<div class="col-md-12"><br/></div>
		<div class="col-md-1"></div>
		<div class="col-md-3"><div><h5>线性代数期末模拟卷（三）及答案</h5></div></div>
		<div class="col-md-2"><form action="<c:url value='/Download1Servlet'/>"><button type="submit" class="btn btn-warning">下载</button></form></div>

		<div class="col-md-1"></div>
		<div class="col-md-3"><div><h5>线性代数期末模拟卷（四）及答案</h5></div></div>
		<div class="col-md-2"><form action="<c:url value='/Download1Servlet'/>"><button type="submit" class="btn btn-warning">下载</button></form></div>
		<div class="col-md-12"><br/></div>
		<div class="col-md-1"></div>
		<div class="col-md-3"><div><h5>线性代数期末模拟卷（五）及答案</h5></div></div>
		<div class="col-md-2"><form action="<c:url value='/Download1Servlet'/>"><button type="submit" class="btn btn-warning">下载</button></form></div>

		<div class="col-md-1"></div>
		<div class="col-md-3"><div><h5>线性代数期末模拟卷（六）及答案</h5></div></div>
		<div class="col-md-2"><form action="<c:url value='/Download1Servlet'/>"><button type="submit" class="btn btn-warning">下载</button></form></div>
		<div class="col-md-12"><br/></div>
		<div class="col-md-1"></div>
		<div class="col-md-3"><div><h5>线性代数期末模拟卷（七）及答案</h5></div></div>
		<div class="col-md-2"><form action="<c:url value='/Download1Servlet'/>"><button type="submit" class="btn btn-warning">下载</button></form></div>

		<div class="col-md-1"></div>
		<div class="col-md-3"><div><h5>线性代数期末模拟卷（八）及答案</h5></div></div>
		<div class="col-md-2"><form action="<c:url value='/Download1Servlet'/>"><button type="submit" class="btn btn-warning">下载</button></form></div>
		<div class="col-md-12"><br/></div>
		
</div>
<!-- footer-top -->
<div class="footer-top">
	<div class="container">
	</div>
</div>
<!-- footer-top -->
</body>
</html>