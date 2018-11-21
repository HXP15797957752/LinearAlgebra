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
			<div class="well well-large">	
					<h3>查询用户</h3>		<hr color="red" width=100%>		
			<pre><font size=2>ID</font>                                   <font size=2>姓名</font>                                         <font size=2>学校</font>                                       <font size=2>邮箱</font></pre>
		<%
	  
		   		List<User> userlist=new ArrayList();
		   		UserDao userdao=new UserDao();
		   		userlist.addAll(userdao.findAll());
			   	if(userlist==null){
			   		return;
			   	}
			    if(userlist.size()!=0){
			      for(int i=0;i<userlist.size();i++)   {    
			      
			       
		    %>
		    <%-- <% 
		    	while(i==0){
		    %>
		    <div><pre>账号             姓名            学校          邮箱</pre></div>
		    <% }%> --%>
		  	<pre><font size=2><%=userlist.get(i).getId() %></font>                                 <font size=2><%=userlist.get(i).getName() %></font>                                       <font size=2><%=userlist.get(i).getSchool() %></font>                                     <font size=2><%=userlist.get(i).getEmail() %></font></pre>
 
		   	    
		    <%
		    
		   		}
		   		}
		    %>
	   
		<!-- 显示数据库问题 -->
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