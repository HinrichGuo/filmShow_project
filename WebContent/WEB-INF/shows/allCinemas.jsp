<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>电影游览</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="My Show Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!--webfont-->
<link href='http://fonts.useso.com/css?family=Oxygen:400,700,300'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.useso.com/css?family=Open+Sans:400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css"
	media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>
	$(document).ready(function() {
		$(".megamenu").megamenu();
	});
</script>
<script type="text/javascript" src="js/jquery.leanModal.min.js"></script>
<link rel="stylesheet" href="css/font-awesome.min.css" />
<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#horizontalTab').easyResponsiveTabs({
			type : 'default', //Types: default, vertical, accordion           
			width : 'auto', //auto or any width like 600px
			fit : true
		// 100% fit in a container
		});
	});
</script>
<link rel="stylesheet" href="css/menu.css" />
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->
<!---- start-smoth-scrolling---->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1200);
		});
	});
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
					function fun_out() {
						window.location = "${pageContext.request.contextPath }/exit";
					}
				</script>
				<!-- Large modal -->
				<c:if test="${!empty sessionScope.userDate }">
					<button class="btn btn-primary" data-target="#myModal"
						onclick="fun_out() ">注销</button>
				</c:if>
				<c:if test="${empty sessionScope.userDate }">

					<button class="btn btn-primary" data-toggle="modal"
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
															<a href="#ForgetPassword" data-toggle="tab">忘记密码? </a>
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
								</ul></li>
						</ul>
						<ul class="nav navbar-nav">
							<li class="dropdown"><a href="#" data-toggle="dropdown"
								class="dropdown-toggle">类型<b class="caret"></b></a>
								<ul class="dropdown-menu" role="menu">
									<li><a
										href="${pageContext.request.contextPath }/allCinemas">所有电影</a></li>
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
				<div class="col-md-4 movies-by-category">
					<h5>请输入或选择查询</h5>
					<input type="text" class="text" value="Search for a movie name"
						onfocus="this.value = '';"
						onblur="if (this.value == 'Enter email...') {this.value = 'Search for a movie name';}">
					<div class="search-by-lang">
						<div class="c-lang">
							<input type="checkbox" id="c1" name="cc" /> <label class="lang">All
								Dates</label>
						</div>
						<div class="c-lang">
							<input type="checkbox" id="c1" name="cc" /> <label class="lang">Jul
								2015</label>
						</div>
					</div>

					<div class="search-by-lang">
						<div class="c-lang">
							<input type="checkbox" id="c1" name="cc" /> <label class="lang">All
								languages</label>
							<div class="c-lang">
								<input type="checkbox" id="c1" name="cc" /> <label class="lang">Bengali</label>
							</div>
						</div>

					</div>
				</div>
				<div class="col-md-8 movies-now-playing">
					<h3 class="m-head">电影展架</h3>
					<!-- 电影开始 -->
					<div class="col-md-6 movie-preview">
						<a href="${pageContext.request.contextPath }/movieOneshow?movieId=1" class="mask"> <img
							src="images/m12.jpg" class="img-responsive zoom-img" alt="" />
							<div class="m-movie-title">
								<a class="m-movie-link" href="${pageContext.request.contextPath }/movieOneshow?movieId=1">电影名称</a>
								<div class="clearfix"></div>
								<div class="m-r-date">
									<p>
										<i class="fa fa-calendar-o"></i>上映时间
									</p>
								</div>
								<div class="m-r-like">
									<p>
										want to see <span>87</span>%
									</p>
								</div>
								<div class="clearfix"></div>
							</div>
						</a>
					</div>
					<!-- 电影结束-->
					<div class="clearfix"></div>
				</div>
				<!-- 分页 -->
				<div class="blog-pagimation">
					<ul class="pagination sint">
						<li class="disabled"><a href="#" aria-label="Previous"><span
								aria-hidden="true">«</span></a></li>
						<li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
						<li><a href="#">2 <span class="sr-only">(current)</span></a></li>
						<li><a href="#">3 <span class="sr-only">(current)</span></a></li>
						<li><a href="#">4 <span class="sr-only">(current)</span></a></li>
						<li><a href="#">5 <span class="sr-only">(current)</span></a></li>
						<li class="abled"><a href="#" aria-label="Next"><span
								aria-hidden="true">»</span></a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="footer-top-strip">
				<p>
					<span>Next Change <i>(Friday, 19 Jun) </i>:
					</span><a href="movie-single.html">Disney's ABCD 2 (3D) (U)</a>, <a
						href="movie-single.html"> 2 Premi Premache</a> , <a
						href="movie-single.html">Dekh Ke (Bhojpuri)</a> , <a
						href="movie-single.html">Disney's ABCD 2 (2D) (U)</a>, <a
						href="movie-single.html">Dekh Ke (Bhojpuri)</a>
				</p>
				<p>
					<span>Coming Soon :</span><a href="movie-single.html"> 2 Premi
						Premache</a>, <a href="movie-single.html">Acharam, Dekh Ke
						(Bhojpuri)</a>, <a href="movie-single.html">Entourage</a>, <a
						href="movie-single.html">Kuttram Kadithal</a>
				</p>
			</div>

		</div>
		<div class="footer">
			<div class="col-md-3 footer-left">
				<div class="f-mov-list">
					<h4>Latest Movies</h4>
					<ul>
						<li><a href="now-showing.html">Now Showing</a></li>
						<li><a href="comming-soon.html">Coming Soon</a></li>
						<li><a href="celebrities.html">Movie Celebrities</a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="col-md-3 footer-left">
				<div class="f-mov-list">
					<h4>Cinemas & Regions</h4>
					<ul>
						<li><a href="regions.html">All Regions</a></li>
						<li><a href="cinema-chain.html">Cinema Chains</a></li>
						<li><a href="cinemas.html">Cinemas</a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="col-md-3 footer-left">
				<div class="f-mov-list">
					<h4>Exclusives</h4>
					<ul>
						<li><a href="donate.html">Book A Smile</a></li>
						<li><a href="vochers.html">Corporate Vouchers</a></li>
						<li><a href="gift-cards.html">Gift Cards</a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="col-md-3 footer-left">
				<div class="f-mov-list">
					<h4>Movies by Genre</h4>
					<ul>
						<li><a href="movies.html">Action</a></li>
						<li><a href="movies.html">Romance</a></li>
						<li><a href="movies.html">Comedy</a></li>
						<li><a href="movies.html">Adult</a></li>
						<li><a href="movies.html">Adventure</a></li>
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
						<input type="text" class="text" value="Enter Email ID"
							onfocus="this.value = '';"
							onblur="if (this.value == 'Enter email...') {this.value = 'Enter Email ID';}">
						<input type="submit" value="submit">
						<div class="clearfix"></div>
					</div>
					<div class="recent_24by7">
						<a class="play-icon popup-with-zoom-anim" href="#small-dialog"
							href="#"><i class="fa fa-calendar-o"></i>Resend Booking
							Confirmation</a> <a href="support.html"><i class="fa fa-question"></i>24/7
							Customer Care</a>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="clearfix"></div>
	</div>
	<div class="copy-rights text-center">
		<p>
			Copyright &copy; 2015.Company name All rights reserved.<a
				target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
		</p>
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

			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>
	<a href="#home" class="scroll" id="toTop" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>
</body>
</html>