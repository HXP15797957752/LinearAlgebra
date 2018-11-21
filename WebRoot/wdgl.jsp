<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="cn.jxau.user.domain.Question"%>
<%@ page import="cn.jxau.user.dao.QuestionDao"%>
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
<script>
	


</script>
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
		      	String name=questionlist.get(i).getName();
		       
	    %>
	   <div class="col-md-1"><img src="images/wenhao.png" class="img-responsive" alt=""></div>
	    <div class="col-md-11 well well-large">
	   	<h4 align=right><font color=gray>来自 <%=questionlist.get(i).getName() %></font></h4>
	    <h3><%=questionlist.get(i).getSort() %></h3>
	    <h4><%=questionlist.get(i).getQuestion() %></h4>
	    <h5><font color=gray><%=questionlist.get(i).getTime() %></font></h5>
	    <a href="deletequestion.jsp?name=<%=name%>">删除</a>
	    </div>
	   	    
	    <%
	    
	   		}
	   		}
	    %>
	   
		<!-- 显示数据库问题 -->
<!-- footer-top -->
<div class="footer-top">
	<div class="container">
	</div>
</div>
<!-- footer-top -->
</body>
</html>