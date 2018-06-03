<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>电影播放时刻表</title>
<link href="${pageContext.request.contextPath }/css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
<!-- Custom Theme files -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="My Show Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='http://fonts.useso.com/css?family=Oxygen:400,700,300' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<!-- start menu -->
<link href="${pageContext.request.contextPath }/css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.leanModal.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/font-awesome.min.css" />
<script src="${pageContext.request.contextPath }/js/easyResponsiveTabs.js" type="text/javascript"></script>
		    <script type="text/javascript">
			    $(document).ready(function () {
			        $('#horizontalTab').easyResponsiveTabs({
			            type: 'default', //Types: default, vertical, accordion           
			            width: 'auto', //auto or any width like 600px
			            fit: true   // 100% fit in a container
			        });
			    });
</script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/menu.css" />
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->
<!---- start-smoth-scrolling---->
<script type="text/javascript" src="${pageContext.request.contextPath }/js/move-top.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/easing.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
				});
			});
		</script>
		<script src="${pageContext.request.contextPath }/js/jquery-2.1.3.min.js"></script>
<script>
	$(window).load(function(){
		$.ajax({
			url : "${pageContext.request.contextPath}/selectCinema",
			success : function(data){
				var cinemas  = eval(data);
				for(var i=0 ; i<cinemas.length; i++){
					$("div[class='movies']").append("<li><a href='${pageContext.request.contextPath }/#'>"+cinemas[i].cinemaName+"</a></li>");
				//	$("#display").append("<h3 class='title'>"+cinemas[i].cinemaName+"</h3><div class='col-sm-3'><div class='e-movie'><div class='e-movie-img'><a href='${pageContext.request.contextPath }/events.jsp'><img src='${pageContext.request.contextPath }/images/"+cinemas[i].cinemaLogo+"' /></a></div><div class='e-buy-tickets'><a href='${pageContext.request.contextPath }/event-payment.jsp'>进入影院</a></div></div></div> ")
				
				}
			}
		});
	})
</script>
<!---- start-smoth-scrolling---->
</head>
<body>
	<!-- header-section-starts -->
		
		<div class="header-top-strip" id="home">
			<div class="container">
			<div class="header-top-left">
				<p>
					<a href="${pageContext.request.contextPath }/index">XXX首页 </a> |
					<c:if test="${!empty sessionScope.userDate }">
						<a class="play-icon popup-with-zoom-anim" href="#small-dialog"
							href="#"> 欢迎${sessionScope.userDate.userName }登录</a>
					</c:if>

					<c:if test="${empty sessionScope.userDate }">
						<a class="play-icon popup-with-zoom-anim" href="#small-dialog"
							href="#"> 欢迎游客浏览</a>
					</c:if>
				</p>
			</div>
			<div class="header-top-right">

				<script>
					function fun_out(){
						window.location="${pageContext.request.contextPath }/exit";
					}
				</script>
				<!-- Large modal -->
				<c:if test="${!empty sessionScope.userDate }">
					<button class="btn btn-primary" data-target="#myModal"
						onclick="fun_out() ">注销</button>
				</c:if>
				<c:if test="${empty sessionScope.userDate }">
				
					<button class="btn btn-primary"  data-toggle="modal"
						data-target="#myModal">登录/注册</button>
				</c:if>

				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="myLargeModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title" id="myModalLabel">登录，若没有账号请注册!</h4>
							</div>
							<div class="modal-body">
								<div class="row">
									<div class="col-md-8"
										style="border-right: 1px dotted #C2C2C2; padding-right: 30px;">
										<!-- Nav tabs -->
										<ul class="nav nav-tabs">
											<li class="active"><a href="#Login" data-toggle="tab">登录</a></li>
											<li><a href="#Registration" data-toggle="tab">注册111</a></li>
										</ul>
										<!-- Tab panes -->
										<div class="tab-content">
											<div class="tab-pane active" id="Login">
												<!-- 登录块开始 -->
												<form role="form"
													action="${pageContext.request.contextPath }/userLogin"
													method="post" class="form-horizontal">
													<div class="form-group">
														<label for="email" class="col-sm-2 control-label">
															手机号：</label>
														<div class="col-sm-10">
															<input type="text" name="userPhone" class="form-control"
																id="email1" placeholder="请输入手机号" />
														</div>
													</div>
													<div class="form-group">
														<label for="exampleInputPassword1"
															class="col-sm-2 control-label"> 密码：</label>
														<div class="col-sm-10">
															<input type="password" name="userPsw"
																class="form-control" id="exampleInputPassword1"
																placeholder="请输入密码" />
														</div>
													</div>
													<div class="row">
														<div class="col-sm-2"></div>
														<div class="col-sm-10">
															<button type="submit" class="btn btn-primary btn-sm">
																登录</button>
															<a href="#ForgetPassword" 
															 data-toggle="tab">忘记密码? </a> 
														</div>
													</div>
												</form>
												<!-- 登录块结束 -->
											</div>
											<!-- 忘记密码开始 -->
											<div class="tab-pane" id="ForgetPassword">
												<form role="form"
													action="${pageContext.request.contextPath }/forgrtPassword"
													method="post" class="form-horizontal">
													<div class="form-group">
														<label for="email" class="col-sm-2 control-label">
															邮箱：</label>
														<div class="col-sm-10">
															<input type="text" name="email" class="form-control"
																id="email1" placeholder="请输入email找回密码" />
														</div>
													</div>

													<div class="row">
														<div class="col-sm-2"></div>
														<div class="col-sm-10">
															<button type="submit" class="btn btn-primary btn-sm">
																提交</button>

														</div>
													</div>
												</form>

											</div>
											<!-- 忘记密码结束 -->
											<div class="tab-pane" id="Registration">
												<!-- 注册开始 -->

												<form role="form" class="form-horizontal"
													action="${pageContext.request.contextPath }/userRegist"
													method="post">
													<div class="form-group">
														<label for="email" class="col-sm-2 control-label">
															用户名：</label>
														<div class="col-sm-10">
															<div class="row">
																<div class="col-md-9">
																	<input type="text" name="userName" class="form-control"
																		placeholder="Name" />
																</div>
															</div>
														</div>
													</div>
													<div class="form-group">
														<label for="email" class="col-sm-2 control-label">
															邮箱： </label>
														<div class="col-sm-10">
															<input type="email" name="userBlank1"
																class="form-control" id="email" placeholder="Email" />
														</div>
													</div>
													<div class="form-group">
														<label for="mobile" class="col-sm-2 control-label">
															电话：</label>
														<div class="col-sm-10">
															<input type="text" class="form-control" name="userPhone"
																id="mobile" placeholder="Mobile" />
														</div>
													</div>
													<div class="form-group">
														<label for="password" class="col-sm-2 control-label">
															密码：</label>
														<div class="col-sm-10">
															<input type="password" class="form-control"
																name="userPsw" id="password1" placeholder="Password" />
														</div>
													</div>
													<div class="form-group">
														<label for="password" class="col-sm-2 control-label">
															确认密码：</label>
														<div class="col-sm-10">
															<input type="password" class="form-control"
																id="password2" placeholder="Password" />
														</div>
													</div>
													<div class="row">
														<div class="col-sm-2"></div>
														<div class="col-sm-10">
															<button type="submit" class="btn btn-primary btn-sm">
																提交</button>
															<button type="button" class="btn btn-default btn-sm">
																取消</button>
														</div>
													</div>
												</form>
												<!-- 注册结束 -->
											</div>
										</div>
										<div id="OR" class="hidden-xs">OR</div>
									</div>
									<div class="col-md-4">
										<div class="row text-center sign-with">
											<div class="col-md-12">
												<h3 class="other-nw">其他方式登录</h3>
											</div>
											<div class="col-md-12">
												<div class="btn-group btn-group-justified">
													<a href="#" class="btn btn-primary">Facebook</a> <a
														href="#" class="btn btn-danger"> Google +</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="container">
		<div class="main-content">
			<div class="header">
				<div class="logo">
					<a href="${pageContext.request.contextPath }/index.jsp"><h1>我的影院</h1></a>
				</div>
				<div class="search">
					<div class="search2">
						<form>
							<i class="fa fa-search"></i> <input type="text"
								value="Search for a movie, play, event, sport or more"
								onfocus="this.value = '';"
								onblur="if (this.value == '') {this.value = 'Search for a movie, play, event, sport or more';}" />
						</form>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="bootstrap_container">
				<nav class="navbar navbar-default w3_megamenu" role="navigation">
					<div class="navbar-header">
						<button type="button" data-toggle="collapse"
							data-target="#defaultmenu" class="navbar-toggle">
							<span class="icon-bar"></span><span class="icon-bar"></span><span
								class="icon-bar"></span>
						</button>
						<a href="${pageContext.request.contextPath }/index.jsp"
							class="navbar-brand"><i class="fa fa-home"></i></a>
					</div>
					<!-- end navbar-header -->
	
					<div id="defaultmenu" class="navbar-collapse collapse">
						<!-- 导航开始 -->
						<ul class="nav navbar-nav">
							<li class="active"><a
								href="${pageContext.request.contextPath }/index.jsp">主页</a></li>
							<li class="dropdown"><a href="#" data-toggle="dropdown"
								class="dropdown-toggle">影院选择<b class="caret"></b></a>
								<ul class="dropdown-menu movies" role="menu">
									<div class="movies"></div>
								</ul> 
							</li>
						</ul>
						<ul class="nav navbar-nav">
							<li class="dropdown"><a href="#" data-toggle="dropdown"
								class="dropdown-toggle">类型<b class="caret"></b></a>
								<ul class="dropdown-menu" role="menu">
									<li><a
										href="${pageContext.request.contextPath }/about.jsp">2D</a></li>
									<li><a href="${pageContext.request.contextPath }/blog.jsp">3D</a></li>
									<li><a href="${pageContext.request.contextPath }/404.jsp">IMAX</a></li>
								</ul> <!-- end dropdown-menu --></li>
						</ul>
						<!-- end nav navbar-nav -->
						<c:if test="${!empty sessionScope.userDate }">
							<ul class="nav navbar-nav navbar-right">
								<li class=""><a
									href="${pageContext.request.contextPath }/personCon?userId=${sessionScope.userDate.id }"
									id="person" class="dropdown-toggle">我的</a></li>
							</ul>
						</c:if>
					</div>
				</nav>
            
		</div>
		<div class="now-showing-list">
		<div class="col-md-4 movies-by-category movie-booking">
			<h5>电影 :${requestScope.film.filmName }</h5>
			<hr />
			<div class="movie-ticket-book">
					<div class="clearfix"></div>
					<c:if test="${empty requestScope.film.filmPoster }">
						<img src="${pageContext.request.contextPath }/images/movie-show.jpg" style="width:320px;height:430px;" alt="" />
					</c:if>
					<c:if test="${!empty requestScope.film.filmPoster }">
						<img src="/upload/${requestScope.film.filmPoster }" style="width:320px;height:430px;" alt="" />
					</c:if>
					<c:if test="${requestScope.film.filmPoster=='deflaut.jpg' }">
						<img src="${pageContext.request.contextPath }/images/cinema.jpg" style="width:320px;height:430px;" alt="" />
					</c:if>
					<div class="bahubali-details">
						<h4>导演:<i style="color:red;size:16px;">${requestScope.film.filmDirector }</i></h4>
						<h4>国家:<i style="color:red;size:16px;">${requestScope.film.filmCountry }</i></h4>
						<h4>时长:<i style="color:red;size:16px;">${requestScope.film.filmTimelong } </i>/分钟</h4>
					</div>
				</div>
			</div>
		<div class="col-md-8 movies-dates">	
			<div class="movie-date-selection">
				<ul>
					<li class="location">
						<a href="${pageContext.request.contextPath }/movieAddress?movieId="><i class="fa fa-map-marker"></i>Theater Name: Location</a>
					</li>
					<li class="time">
						<a href="${pageContext.request.contextPath }/perchMovie">11:00 AM</a>
					</li>
					<li class="time">
						<a href="${pageContext.request.contextPath }/perchMovie">3:00 PM</a>
					</li>
					<li class="time">
						<a href="${pageContext.request.contextPath }/perchMovie">6:20 PM</a>
					</li>
					<li class="time">
						<a href="${pageContext.request.contextPath }/perchMovie">9:00 PM</a>
					</li>
				</ul>
			</div>
			<div class="movie-date-selection">
				<ul>
					<li class="location">
						<a href="${pageContext.request.contextPath }/pic-a-movie.jsp"><i class="fa fa-map-marker"></i>Theater Name: Location</a>
					</li>
					<li class="time">
						<a href="${pageContext.request.contextPath }/seat2.jsp">11:00 AM</a>
					</li>
					<li class="time">
						<a href="${pageContext.request.contextPath }/seat2.jsp">3:00 PM</a>
					</li>
					<li class="time">
						<a href="${pageContext.request.contextPath }/seat2.jsp">6:20 PM</a>
					</li>
					<li class="time">
						<a href="${pageContext.request.contextPath }/seat2.jsp">9:00 PM</a>
					</li>
				</ul>
			</div>
			<div class="movie-date-selection">
				<ul>
					<li class="location">
						<a href="${pageContext.request.contextPath }/pic-a-movie.jsp"><i class="fa fa-map-marker"></i>Theater Name: Location</a>
					</li>
					<li class="time">
						<a href="${pageContext.request.contextPath }/seat1.jsp">11:00 AM</a>
					</li>
					<li class="time">
						<a href="${pageContext.request.contextPath }/seat1.jsp">3:00 PM</a>
					</li>
					<li class="time">
						<a href="${pageContext.request.contextPath }/seat1.jsp">6:20 PM</a>
					</li>
					<li class="time">
						<a href="${pageContext.request.contextPath }/seat1.jsp">9:00 PM</a>
					</li>
				</ul>
			</div>
			<div class="movie-date-selection">
				<ul>
					<li class="location">
						<a href="${pageContext.request.contextPath }/pic-a-movie.jsp"><i class="fa fa-map-marker"></i>Theater Name: Location</a>
					</li>
					<li class="time">
						<a href="${pageContext.request.contextPath }/seat2.jsp">11:00 AM</a>
					</li>
					<li class="time">
						<a href="${pageContext.request.contextPath }/seat2.jsp">3:00 PM</a>
					</li>
					<li class="time">
						<a href="${pageContext.request.contextPath }/seat2.jsp">6:20 PM</a>
					</li>
					<li class="time">
						<a href="${pageContext.request.contextPath }/seat2.jsp">9:00 PM</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
		</div>
		<div class="footer">
			<div class="col-md-3 footer-left">
				<div class="f-mov-list">
					<h4>Latest Movies</h4>
					<ul>
						<li><a href="${pageContext.request.contextPath }/now-showing.jsp">Now Showing</a></li>
						<li><a href="${pageContext.request.contextPath }/comming-soon.jsp">Coming Soon</a></li>
						<li><a href="${pageContext.request.contextPath }/celebrities.jsp">Movie Celebrities</a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<!-- <div class="f-mov-list">
					<h4>Movie Reviews</h4>
					<ul>
						<li><a href="404.jsp" target="target_blank">Entertainment News</a></li>
						<li><a href="blog.jsp" target="target_blank">Rajeev Masand</a></li>
						<li><a href="blog.jsp" target="target_blank">Film Reviews</a></li>
						<li><a href="write-us.jsp" target="target_blank">Guest Blogging</a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<div class="f-mov-list">
					<h4>Movie Trailers</h4>
					<ul>
						<li><a href="trailers-now-showing.jsp">Now Showing</a></li>
						<li><a href="trailers-comming-soon.jsp">Coming Soon</a></li>						
					</ul>
					<div class="clearfix"></div>
				</div> -->
				</div>
			<div class="col-md-3 footer-left">
				<div class="f-mov-list">
					<h4>Cinemas & Regions</h4>
					<ul>
						<li><a href="${pageContext.request.contextPath }/regions.jsp">All Regions</a></li>
						<li><a href="${pageContext.request.contextPath }/cinema-chain.jsp">Cinema Chains</a></li>
						<li><a href="${pageContext.request.contextPath }/cinemas.jsp">Cinemas</a></li>						
					</ul>
					<div class="clearfix"></div>
				</div>
				<!-- <div class="f-mov-list">
					<h4>Movies by Language</h4>
					<ul>
						<li><a href="movies.jsp">Hindi</a></li>
						<li><a href="movies.jsp">English</a></li>
						<li><a href="movies.jsp">Marathi</a></li>
						<li><a href="movies.jsp">Bengali</a></li>
						<li><a href="movies.jsp">Tamil</a></li>
						<li><a href="movies.jsp">Telugu</a></li>
						<li><a href="movies.jsp">Malayalam</a></li>
						<li><a href="movies.jsp">Bhojpuri</a></li>
						<li><a href="movies.jsp">Kannada</a></li>					
					</ul>
					<div class="clearfix"></div>
				</div> -->
				</div>
			<div class="col-md-3 footer-left">
				<div class="f-mov-list">
					<h4>Exclusives</h4>
					<ul>
						<li><a href="${pageContext.request.contextPath }/donate.jsp">Book A Smile</a></li>
						<li><a href="${pageContext.request.contextPath }/vochers.jsp">Corporate Vouchers</a></li>
						<li><a href="${pageContext.request.contextPath }/gift-cards.jsp">Gift Cards</a></li>
					</ul>
					<div class="clearfix"></div>					
				</div>	
				<!-- <div class="f-mov-list">
					<h4>Help</h4>
					<ul>
						<li><a href="site-map.jsp">Sitemap</a></li>
						<li><a href="feed-back.jsp">Feedback</a></li>
						<li><a href="faq.jsp">FAQs</a></li>
						<li><a href="terms-and-conditions.jsp">Terms and Conditions</a></li>
						<li><a href="privacy-policy.jsp">Privacy Policy</a></li>
					</ul>
					<div class="clearfix"></div>
				</div>	 -->		
			</div>
			<div class="col-md-3 footer-left">
				<div class="f-mov-list">
					<h4>Movies by Genre</h4>
					<ul>
						<li><a href="${pageContext.request.contextPath }/movies.jsp">Action</a></li>
						<li><a href="${pageContext.request.contextPath }/movies.jsp">Romance</a></li>
						<li><a href="${pageContext.request.contextPath }/movies.jsp">Comedy</a></li>
						<li><a href="${pageContext.request.contextPath }/movies.jsp">Adult</a></li>
						<!-- <li><a href="movies.jsp">Adventure</a></li>
						<li><a href="movies.jsp">Classic</a></li>
						<li><a href="movies.jsp">Crime</a></li>
						<li><a href="movies.jsp">Drama</a></li>
						<li><a href="movies.jsp">Family </a></li>
						<li><a href="movies.jsp">Fantasy</a></li>
						<li><a href="movies.jsp">Musical</a></li>
						<li><a href="movies.jsp">Mystery</a></li>
						<li><a href="movies.jsp">Suspense</a></li>
						<li><a href="movies.jsp">Thriller</a></li> -->
					</ul>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="clearfix"></div>
			<div class="col-md-12">
			<div class="footer-right">
				<div class="follow-us">
					<h5 class="f-head">Follow us</h5>
					<ul class="social-icons">
						<li><a href="#"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#"><i class="fa fa-youtube"></i></a></li>
						<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
						<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
						<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<div class="subscribe">
					<h5 class="f-head">Subscribe to our newsletters</h5>
					<input type="text" class="text" value="Enter Email ID" onfocus="this.value = '';" onblur="if (this.value == 'Enter email...') {this.value = 'Enter Email ID';}">
					<input type="submit" value="submit">
					<div class="clearfix"></div>
				</div>
				<div class="recent_24by7">
					<a class="play-icon popup-with-zoom-anim" href="#small-dialog" href="#"><i class="fa fa-calendar-o"></i>Resend Booking Confirmation</a>
					<a href="${pageContext.request.contextPath }/support.jsp"><i class="fa fa-question"></i>24/7 Customer Care</a>
				</div>
					<div class="clearfix"></div>
			</div>
			</div>${pageContext.request.contextPath }/
			<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
			<div class="copy-rights text-center">
				<p>Copyright &copy; 2015.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
			</div>
	</div>
 <script type="text/javascript">
						$(document).ready(function() {
							/*
							var defaults = {
					  			containerID: 'toTop', // fading element id
								containerHoverID: 'toTopHover', // fading element hover id
								scrollSpeed: 1200,
								easingType: 'linear' 
					 		};
							*/
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
				<a href="#home" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
</body>
</html>