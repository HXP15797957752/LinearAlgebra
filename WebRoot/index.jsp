<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>首页</title>
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
<!-- banner -->
	<div class="banner">
		<div class="container">
					<!-- banner Slider starts Here -->
						<script src="js/responsiveslides.min.js"></script>
						<script>
						// You can also use "$(window).load(function() {"
						$(function () {
						  // Slideshow 4
						  $("#slider4").responsiveSlides({
							auto: true,
							pager: true,
							nav: true,
							speed: 800,
							namespace: "callbacks",
							before: function () {
							  $('.events').append("<li>before event fired.</li>");
							},
							after: function () {
							  $('.events').append("<li>after event fired.</li>");
							}
						  });
					
						});
					  </script>
					<!--//End-slider-script-->
				<div  id="top" class="callbacks_container">
					<ul class="rslides" id="slider4">
						<li>
							<div class="banner-info">
								<h1>百 位 名 师 讲 解</h1>
								<p>在这里，你可以找到好老师，在这里，你可以学到更多的知识。只要你来，他们就在。百位名师汇聚一堂，不一样的风采，让学习更轻松，只为求学的你准备！</p>
								
							</div>
						</li>
						<li>
							<div class="banner-info">
								<h1>丰 富 的 资 源</h1>
								<p>海量的资源，只等有心的你。我们提供更多的学习资料，这里有你意想不到的收获，只要你有一颗进取的求学之心，我们定不辜负你的期望！</p>
							</div>
						</li>
						<li>
							<div class="banner-info">
								<h1>在线解答你的问题</h1>
								<p>不一样的模块，简单明了。我们提供专业的解答，只为能在你困惑之时献出绵薄之力。</p>
							</div>
						</li>
					 </ul>
			    </div>
			    <div class="clearfix"> </div>
	  			<!-- banner Slider Ends Here --> 
		</div>
	</div>
<!-- banner -->	

<!-- our -->	
	<div class="our">
		<div class="container">
			<h5>名师简介</h5>
			<h2>不一样的老师，不一样的教学风格</h2>
			<p>教师是火种，点燃了学生的心灵之火；教师是石级，承受着学生一步步踏实地向上攀登。</p>
			<div class="our-top">
				<div class="col-md-4 our-left">
					<!-- <i class="best"></i> -->
					<i><image src="images/t11.png"></image></i>
					<h3>李慧丽，教授</h3>	
					<p>从教40年，对线性代数有深入了解。为线性代数做出杰出的贡献。从教40年，对线性代数有深入了解。为线性代数做出杰出的贡献。从教40年，对线性代数有深入了解。为线性代数做出杰出的贡献。</p>
				</div>
				<div class="col-md-4 our-left">
					<i><image src="images/t22.png"></image></i>
					<h3>约翰，博士</h3>	
					<p>从教40年，对线性代数有深入了解。为线性代数做出杰出的贡献。从教40年，对线性代数有深入了解。为线性代数做出杰出的贡献。从教40年，对线性代数有深入了解。为线性代数做出杰出的贡献。</p>
				</div>
				<div class="col-md-4 our-left">
					<i><image src="images/t33.png"></image></i>
					<h3>杨忠义，博士</h3>	
					<p>从教40年，对线性代数有深入了解。为线性代数做出杰出的贡献。从教40年，对线性代数有深入了解。为线性代数做出杰出的贡献。从教40年，对线性代数有深入了解。为线性代数做出杰出的贡献。</p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
<!-- our -->	
<!-- employs -->
	<div class="employs">
		<div class="container">
		<div class="team">
			<div class="product-tabs">
					<!--Horizontal Tab-->
				    <div id="horizontalTab" class="r-tabs">
				        <ul class="r-tabs-nav">
				            <li class="r-tabs-tab r-tabs-state-default"><a href="#tab-1" class="r-tabs-anchor"> 各类教材</a></li>
							 <li class="r-tabs-tab r-tabs-state-default"><a href="#tab-2" class="r-tabs-anchor">教辅资料 </a></li>
				        </ul>
					<div class="r-tabs-accordion-title r-tabs-state-default"><a href="#tab-1" class="r-tabs-anchor"></a></div><div id="tab-2" class="product-complete-info r-tabs-panel r-tabs-state-default" style="overflow: hidden; display: none;">
						<div class="team-top">
							<li><img src="images/1.png" class="img-responsive" alt=""></li>
							<li><img src="images/2.png" class="img-responsive" alt=""></li>
							<li><img src="images/3.png" class="img-responsive" alt=""></li>
							<li><img src="images/4.png" class="img-responsive" alt=""></li>
							<li><img src="images/5.png" class="img-responsive" alt=""></li>
							<li><img src="images/6.png" class="img-responsive" alt=""></li>
				        </div>
					</div>
						<div class="r-tabs-accordion-title r-tabs-state-active"><a href="#tab-2" class="r-tabs-anchor"></a></div><div id="tab-1" class="product-complete-info r-tabs-panel r-tabs-state-active" style="overflow: hidden; display: block;">
								<div class="team-top">
							<li><img src="images/t1.jpg" class="img-responsive" alt=""></li>
							<li><img src="images/t2.jpg" class="img-responsive" alt=""></li>
							<li><img src="images/t4.jpg" class="img-responsive" alt=""></li>
							<li><img src="images/t3.jpg" class="img-responsive" alt=""></li>
							<li><img src="images/t5.jpg" class="img-responsive" alt=""></li>
							<li><img src="images/t6.jpg" class="img-responsive" alt=""></li>
				        </div>
				    </div>
					
				    <!-- Responsive Tabs JS -->
				    <script src="js/jquery.responsiveTabs.js" type="text/javascript"></script>
				
				    <script type="text/javascript">
				        $(document).ready(function () {
				            $('#horizontalTab').responsiveTabs({
				                rotate: false,
				                startCollapsed: 'accordion',
				                collapsible: 'accordion',
				                setHash: true,
				                disabled: [4,5],
				                activate: function(e, tab) {
				                    $('.info').html('Tab <strong>' + tab.id + '</strong> activated!');
				                }
				            });
				
				            $('#start-rotation').on('click', function() {
				                $('#horizontalTab').responsiveTabs('active');
				            });
				            $('#stop-rotation').on('click', function() {
				                $('#horizontalTab').responsiveTabs('stopRotation');
				            });
				            $('#start-rotation').on('click', function() {
				                $('#horizontalTab').responsiveTabs('active');
				            });
				            $('.select-tab').on('click', function() {
				                $('#horizontalTab').responsiveTabs('activate', $(this).val());
				            });
				
				        });
				    </script>
				</div>
				</div>
				</div>
	</div>
	</div>
<!-- employs -->

<!-- what -->
	<div class="what">
		<div class="container">
				<h6>线性代数</h6>
				<h3>遨游在知识的海洋</h3>
			<section class="slider">
						<div class="flexslider">
							<ul class="slides">
								<li>
								<div class="what-top">
									<p>人生是有限的，但知识是无限的（没有边界的），用有限的人生追求无限的知识，是必然失败的。学习之事，必须潜心 研究，日积月累然后有所成就。</p>
									<h5>学习与人生,<span> 两者的关系</span></h5>
									<div class="what-bottom">
									<img src="images/man.png" class="img-responsive" alt="">
								</div>
								</div>
								
								</li>
								<li>
									<div class="what-top">
									<p>要建设，就必须有知识，必须掌握科学。而要有知识，就必须学习，顽强地、耐心地学习。向所有的人学习，不论向敌人或朋友都要学习，特别是向敌人学习。</p>
									<h5>————<span>  斯大林</span></h5>
									<div class="what-bottom">
									<img src="images/man.png" class="img-responsive" alt="">
								</div>
								</div>
								
								</li>
								<li>
									<div class="what-top">
									<p>春秋时期大教育家、思想家孔子曾说：“学而不思则罔，思而不学则殆。”这句话就阐述了学习与思考的辩证关系。说明，学习是要经过思考的，否则将一事无成。思考后就能得出学习成果，说的是非常对的。</p>
									<h5><span> </span></h5>
								<div class="what-bottom">
									<img src="images/man.png" class="img-responsive" alt="">
								</div>
							</div>
								
								</li>
								<li>
								<div class="what-top">
									<p>坚持不懈的劳动，自然是“苦”事，但他们功的必由之路。高尔基说过：“天才就是劳动，人的天赋就像火花，它即可以熄灭，也可以旺盛的燃烧起来，而是它门成为熊熊烈火的方法，那就是劳动。”劳动就是勤奋，勤奋是产生天才的根本原因。</p>
									<h5><span> 勤     奋</span></h5>
								<div class="what-bottom">
									<img src="images/man.png" class="img-responsive" alt="">
								</div>
								</div>
								
								</li>
								<div class="clearfix"> </div>
							</ul>
						</div>
					</section>
					<!-- FlexSlider -->
							  <script defer src="js/jquery.flexslider.js"></script>
							  <script type="text/javascript">
								$(function(){
								  SyntaxHighlighter.all();
								});
								$(window).load(function(){
								  $('.flexslider').flexslider({
									animation: "slide",
									start: function(slider){
									  $('body').removeClass('loading');
									}
								  });
								});
							  </script>
						<!-- FlexSlider -->

		</div>
	</div>
<!-- what -->
<!-- footer-top -->
<div class="footer-top">
	<div class="container">
	</div>
</div>
<!-- footer-top -->

</body>
</html>
