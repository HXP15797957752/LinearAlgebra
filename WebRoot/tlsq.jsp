<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="cn.jxau.user.domain.Question"%>
<%@ page import="cn.jxau.user.dao.QuestionDao"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.lang.System"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>讨论社区</title>
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
<%-- <jsp:forward page="QuestionServlet"></jsp:forward> --%> 		
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
								<li class="active"><a href=" tlsq.jsp">讨论社区 </a></li>
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
	<!-- Blog -->
		<div class="blog">
			<div class="container" style="background:url(images/bj3.jpg); height:200; width:200;">
			<div class="col-md-12"><div><li class="lid"><h3>问答</h3></li></div></div>
			
			<div class="contact_left well well-large" style="background:url(images/bj3.jpg);">
					<form action="<c:url value='/QuestionServlet'/>" method="post">
							<input type="hidden" name="name" value="${sessionScope.username }">		
						<div>
							<li class="lid"><input style="border-radius:8px;box-shadow: 0px 0 13px rgba(100,100,100,.7);" type="text" name="sort" value="分类" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '分类';}">	</div>					
								</li><br/>	
								<li class="lid"><textarea style="border-radius:11px;box-shadow: 0px 0 13px rgba(100,100,100,.7);width:60%;height:100px" value="请输入问题" name="question" clos=40 rows=10 onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '请输入问题';}">请输入问题</textarea>
							</li><br/>
								 <li class="lid"><input style="border-radius:11px;box-shadow: 0px 0 13px rgba(100,100,100,.7);" type="submit" name="submit" value="提  问"></li>
	
					</form>		
			 </div> 			
		<!-- 显示数据库问题 -->
		<%
	  
	   		List<Question> questionlist=new ArrayList();
	   		QuestionDao questiondao=new QuestionDao();
	   		questionlist.addAll(questiondao.findAll());
		   	if(questionlist==null){
		   		return;
		   	}
		    if(questionlist.size()!=0){
		      for(int i=0;i<questionlist.size();i++)   {    
		      
		       
	    %>
	   <div class="col-md-1"><img src="images/wenhao.png" class="img-responsive" alt=""></div>
	    <div class="col-md-11 well well-large">
	   	<h4 align=right><font color=gray>来自 <%=questionlist.get(i).getName() %></font></h4>
	    <h3><%=questionlist.get(i).getSort() %></h3>
	    <h4><%=questionlist.get(i).getQuestion() %></h4>
	    <a href="#">解答</a>
	    <h5 align=right><font color=gray><%=questionlist.get(i).getTime() %></font></h5>
	    </div>
	   	    
	    <%
	    
	   		}
	   		}
	    %>
	   
		<!-- 显示数据库问题 -->
		<!-- /Blog -->	

	
</div>
<!-- footer-top -->
<div class="footer-top">
	<div class="container">
	</div>
</div>
<!-- footer-top -->
</body>
</html>