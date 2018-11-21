<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>章节学习</title>
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
								<li class="active"><a href=" zjxx.jsp">章节学习 </a></li>
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
<div class="about-main" >
			<div class="container" style="background:url(images/bj2.jpg);">
				<h3><font color=black>线性代数章节学习</font></h3>
<!-- recnt -->
	<div class="recnt" style="background:url(images/bj2.jpg);">
		<div class="col-md-12 rec-left">
			<div class="air">
				<li class="ic-on"><i class="drib"></i></li>
				<li class="wb-dis"><h4>第一章</h4><h5>行列式</h5></li>
				
				<li class="dr-co"><p>§1 二阶与三阶行列式<br/>§2 全排列及其逆序数<br/>§3 n阶行列式的定义<br/>§4 对换<br/>§5 行列式的性质<br/>§6 行列式按行（列）展开<br/>§7 克拉默法则<br/>习题一</p></li>
				<li class="dr-co"><p></p></li>
				<li class="b-tn"><div class="apply_btn">
								<form action="http://mp.weixin.qq.com/s/ErqTe2XKtFRJbHuaJvIvjg">
									<input type="submit" value="  学     习    ">
								</form>
							</div></li>
								<div class="clearfix"></div>
			</div>
			<div class="air-1">
				<li class="ic-on"><i class="cli"></i></li>
				<li class="wb-dis"><h4>第二章</h4><h5>矩阵及其计算</h5></li>
				<li class="dr-co"><p>§1 矩阵<br/>§2 矩阵的运算<br/>§3 逆矩阵<br/>§4 矩阵分块法<br/>习题二</p></li>
				<li class="dr-co"><p></p></li>
				<li class="b-tn"><div class="apply_btn">
								<form action="http://mp.weixin.qq.com/s/nsLxhb56RdWZwZpEu6MLLw">
									<input type="submit" value="  学     习    ">
								</form>
							</div></li>
							<div class="clearfix"></div>
			</div>
			<div class="air">
				<li class="ic-on"><i class="facb"></i></li>
				<li class="wb-dis"><h4>第三章</h4><h5>矩阵的初等变换与线性方程组</h5></li>
				<li class="dr-co"><p>§1 矩阵的初等变换<br/>§2 矩阵的秩<br/>§3 线性方程组的解<br/>习题三</p></li>
				<li class="dr-co"><p></p></li>				
				<li class="b-tn"><div class="apply_btn">
								<form action="http://mp.weixin.qq.com/s/-H5OvYBJ-qkOY5OuzJavLw">
									<input type="submit" value="  学     习    ">
								</form>
							</div></li>
							<div class="clearfix"></div>
			</div>
			<div class="air-1">
				<li class="ic-on"><i class="intre"></i></li>
				<li class="wb-dis"><h4>第四章</h4><h5>向量组的线性相关性</h5></li>
				<li class="dr-co"><p>§1 向量组及其线性组合<br/>§2 向量组的线性相关性<br/>§3 向量组的秩<br/>§4 线性方程组的解的结构<br/>§5 向量空间<br/>习题四</p></li>
				<li class="dr-co"><p></p></li>	
				<li class="b-tn"><div class="apply_btn">
								<form action="http://mp.weixin.qq.com/s/sDoJJJadoqQuCEGntOfQcQ">
									<input type="submit" value="  学     习    ">
								</form>
							</div></li>
							<div class="clearfix"></div>
			</div>
			<div class="air">
				<li class="ic-on"><i class="wind"></i></li>
				<li class="wb-dis"><h4>第五章</h4><h5>相似矩阵及二次型</h5></li>
				<li class="dr-co"><p>§1 向量的内积、长度及正交性<br/>§2 方阵的特征值与特征向量<br/>§3 相似矩阵<br/>§4 对称矩阵的对角化<br/>§5 二次型及其标准形<br/>§6 用配方法化二次型成标准形<br/>§7 正定二次型<br/>习题五</p></li>
				<li class="dr-co"><p></p></li>	
				<li class="b-tn"><div class="apply_btn">
								<form action="http://mp.weixin.qq.com/s/TDOwZr9xvBzRnWWdL-e8eA">
									<input type="submit" value="  学     习    ">
								</form>
							</div></li>
							<div class="clearfix"></div>
			</div>
			<div class="air-1">
				<li class="ic-on"><i class="intre"></i></li>
				<li class="wb-dis"><h4>第六章</h4><h5>线性空间与线性变换</h5></li>
				<li class="dr-co"><p>§1 线性空间的定义与性质<br/>§2 维数、基与坐标<br/>§3 基变换与坐标变换<br/>§4 线性变换<br/>§5 线性变换的矩阵表示式<br/>习题六</p></li>
				<li class="dr-co"><p></p></li>		
				<li class="b-tn"><div class="apply_btn">
								<form action="http://mp.weixin.qq.com/s/GgrNODkk7Uis8cn5TKsKtg">
									<input type="submit" value="  学     习    ">
								</form>
							</div></li>
							<div class="clearfix"></div>
			</div>
		</div>
		<div class="clearfix"></div>
		
	</div>
<!-- recnt -->
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