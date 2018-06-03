<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>电影信息显示</title>
<link href="${pageContext.request.contextPath }/css/bootstrap.css"
	rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="${pageContext.request.contextPath }/css/style.css"
	rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
<!-- Custom Theme files -->
<meta name="author" content="刘慧兰">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="My Show Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<link href="${pageContext.request.contextPath }/css/popuo-box.css"
	rel="stylesheet" type="text/css" media="all" />
<script
	src="${pageContext.request.contextPath }/js/jquery.magnific-popup.js"
	type="text/javascript"></script>
<!--webfont-->
<link href='http://fonts.useso.com/css?family=Oxygen:400,700,300'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.useso.com/css?family=Open+Sans:400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<!-- start menu -->
<link href="${pageContext.request.contextPath }/css/megamenu.css"
	rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/megamenu.js"></script>
<script>
	$(document).ready(function() {
		$(".megamenu").megamenu();
	});
</script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery.leanModal.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/menu.css" />
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->
<!---- start-smoth-scrolling---->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/move-top.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/easing.js"></script>
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

	<div class="header-top-strip">
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
				<div id="small-dialog" class="mfp-hide">
					<div class="select-city">
						<h3>Resend Confirmation</h3>
						<p>Lorem Ipsum is simply dummy text of the printing and
							typesetting industry</p>
						<div class="confirmation">
							<form>
								<input type="text" class="email" placeholder="Email"
									required="required" pattern="([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?"
									title="Enter a valid email" /> <input type="text" class="email"
									placeholder="Mobile Number" maxlength="10"
									pattern="[1-9]{1}\d{9}" title="Enter a valid mobile number" />
								<input type="submit" value="SEND">
							</form>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<div class="header-top-right">
				<div class="modal fade">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h4 class="modal-title">Modal title</h4>
							</div>
							<div class="modal-body">
								<p>One fine body&hellip;</p>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Close</button>
								<button type="button" class="btn btn-primary">Save
									changes</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>
				<!-- /.modal -->
				<!-- Button trigger modal  -->
				<a class="play-icon popup-with-zoom-anim" href="#small-dialog1">Select
					a Region</a>
				<!---pop-up-box---->

				<!---//pop-up-box---->
				<div id="small-dialog1" class="mfp-hide">
					<div class="select-city">
						<h3>Select Your City</h3>
						<select class="list_of_cities"><option value="">Select
								Your City</option>
							
							<optgroup label="Arunachal Pradesh">
								<option style="padding-left: 10px;" value="TAWA">Tawang</option>
								<option style="padding-left: 10px;" value="ZIRO">Ziro</option>
							</optgroup>
						</select>
						<div class="clearfix"></div>
					</div>
				</div>

				<script>
						$(document).ready(function() {
						$('.popup-with-zoom-anim').magnificPopup({
							type: 'inline',
							fixedContentPos: false,
							fixedBgPos: true,
							overflowY: 'auto',
							closeBtnInside: true,
							preloader: false,
							midClick: true,
							removalDelay: 300,
							mainClass: 'my-mfp-zoom-in'
						});
																						
						});
				</script>
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
				<script>
					$('#myModal').modal('no');
				</script>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
<%-- 	${requestScope.film } --%>
	<div class="container">
		<div class="main-content">
			<div class="header">
				<div class="logo">
					<a href="${pageContext.request.contextPath }/index.jsp"><h1>My
							Show</h1></a>
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
						<ul class="nav navbar-nav">
							<li><a href="${pageContext.request.contextPath }/#">主页</a></li>
							<li class="dropdown"><a href="#" data-toggle="dropdown"
								class="dropdown-toggle">影院选择<b class="caret"></b></a>
								<ul class="dropdown-menu" role="menu">
									<div class="movies"></div>
								</ul> <!-- end dropdown-menu --></li>
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
			<!-- end container -->

			<!-- AddThis Smart Layers END -->

			<div class="m-single-article">
				<div class="article-left">
					<h3>
						${requestScope.film.filmName }<span> <i class="fa fa-heart"></i> 推荐
						</span>
					</h3>
					<p>
						<a class="m-green" href="#">Action</a><a class="m-green" href="#">Thriller</a><a
							class="m-orange" href="#">English</a>
					</p>
					<div class="clearfix"></div>
					<div class="article-time-strip">
						<div class="article-time-strip-left">
							<p>
								Duration <span><i class="fa fa-clock-o"></i>2 hrs 30 mins
								</span> &nbsp;&nbsp; Release Date <span><i
									class="fa fa-calendar"></i>Jun 10, 2015</span>
							</p>
						</div>
						<div class="clearfix"></div>
						<!-- 预告片展示 -->
						<div class="article-img">
							<iframe src="http://player.youku.com/embed/XMzUzNjQ2NjI4NA=="
								frameborder="0" allowfullscreen></iframe>
						</div>
					</div>
				</div>
				<div class="article-right">
					<div class="grid_3 grid_5">
						<div class="bs-example bs-example-tabs" role="tabpanel"
							data-example-id="togglable-tabs">
							<ul id="myTab" class="nav nav-tabs" role="tablist">
								<li role="presentation" class="active"><a href="#home"
									id="home-tab" role="tab" data-toggle="tab" aria-controls="home"
									aria-expanded="true">今日场次</a></li>
							</ul>
							<div id="myTabContent" class="tab-content">
								<div role="tabpanel" class="tab-pane fade in active" id="home"
									aria-labelledby="home-tab">
									<p class="m-s-t">电影播放类型:${requestScope.palyType.typeName}</p>
									<a class="show-time"
										href="${pageContext.request.contextPath }/movieOneTimeShow/${requestScope.film.id }">06:30
										PM</a>
									<div class="clearfix"></div>
									<a class="more-show-time"
										href="${pageContext.request.contextPath }/movieOneTimeShow/${requestScope.film.id }">所有场次</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="reviews-tabs">
				<!-- Main component for a primary marketing message or call to action -->
				<ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTab">
					<li class="test-class active"><a class="deco-none misc-class"
						href="#how-to"> 电影详情</a></li>
					<li><a class="deco-none" href="#source">评论区</a></li>
				</ul>

				<div class="tab-content responsive hidden-xs hidden-sm">
					<!--  基本信息-->
					<div class="tab-pane active" id="how-to">
						<p>
							<strong> 导演 :</strong> <a href="#">${requestScope.film.filmDirector }</a>
						</p>
						<p>
							<strong>相关演员:</strong> <a href="#">${requestScope.film.filmActor }</a> 
						</p>
						<p>
							<strong>国家:</strong> <a href="#">${requestScope.film.filmCountry }</a> 
						</p>
						<p>
							<strong> 简介 :</strong> <a href="#">${requestScope.film.filmIntro }</a>
							<br> <a
								href="mail-to:mail@example.com">官网地址</a>
						</p>

					</div>
					<!-- 评论 -->
					<div class="tab-pane" id="source">
						<c:if test="${empty requestScope.filmCommentDatas}">
							<div class="response">
								<h5>当前电影没有评论，快去订票占沙发吧！</h5>
							</div>
						</c:if>
						<c:if test="${!empty requestScope.filmCommentDatas}">
						<c:forEach items="${requestScope.filmCommentDatas }" var="filmComm"> 
							<div class="response" style="box-shadow:2px 3px 4px #16250879;margin:10px 0;">
							
								<div class="media response-info" >
									<div class="media-left response-text-left">
										<a href="#"> <img class="media-object"
											src="${pageContext.request.contextPath }/images/icon1.png"
											alt="">
										</a>
										<h5>
											 <a href="#">用户名1</a> 
										</h5>
									</div>
									<div class="media-body response-text-right">
										<p>${filmComm.comment }</p> 
										<ul>
											<li>MARCH 21, 2015</li>
											<li><a
												href="${pageContext.request.contextPath }/single.jsp">Reply</a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</c:forEach>
						</c:if>
					</div>
				</div>
			</div>
		</div>
		<div class="footer">
			<div class="col-md-3 footer-left">
				<div class="f-mov-list">
					<h4>Latest Movies</h4>
					<ul>
						<li><a
							href="${pageContext.request.contextPath }/now-showing.jsp">Now
								Showing</a></li>
						<li><a
							href="${pageContext.request.contextPath }/comming-soon.jsp">Coming
								Soon</a></li>
						<li><a
							href="${pageContext.request.contextPath }/celebrities.jsp">Movie
								Celebrities</a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="col-md-3 footer-left">
				<div class="f-mov-list">
					<h4>Cinemas & Regions</h4>
					<ul>
						<li><a href="${pageContext.request.contextPath }/regions.jsp">All
								Regions</a></li>
						<li><a
							href="${pageContext.request.contextPath }/cinema-chain.jsp">Cinema
								Chains</a></li>
						<li><a href="${pageContext.request.contextPath }/cinemas.jsp">Cinemas</a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="col-md-3 footer-left">
				<div class="f-mov-list">
					<h4>Exclusives</h4>
					<ul>
						<li><a href="${pageContext.request.contextPath }/donate.jsp">Book
								A Smile</a></li>
						<li><a href="${pageContext.request.contextPath }/vochers.jsp">Corporate
								Vouchers</a></li>
						<li><a
							href="${pageContext.request.contextPath }/gift-cards.jsp">Gift
								Cards</a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="col-md-3 footer-left">
				<div class="f-mov-list">
					<h4>Movies by Genre</h4>
					<ul>
						<li><a href="${pageContext.request.contextPath }/movies.jsp">Action</a></li>
						<li><a href="${pageContext.request.contextPath }/movies.jsp">Romance</a></li>
						<li><a href="${pageContext.request.contextPath }/movies.jsp">Comedy</a></li>
						<li><a href="${pageContext.request.contextPath }/movies.jsp">Adult</a></li>
					</ul>
					<!-- <div class="clearfix"></div> -->
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
							Confirmation</a> <a
							href="${pageContext.request.contextPath }/support.jsp"><i
							class="fa fa-question"></i>24/7 Customer Care</a>
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
	<script src="${pageContext.request.contextPath }/js/responsive-tabs.js"></script>
	<script type="text/javascript">
		$('#myTab a').click(function(e) {
			e.preventDefault();
			$(this).tab('show');
		});

		$('#moreTabs a').click(function(e) {
			e.preventDefault();
			$(this).tab('show');
		});

		(function($) {
			// Test for making sure event are maintained
			$('.js-alert-test').click(function() {
				alert('Button Clicked: Event was maintained');
			});
			fakewaffle.responsiveTabs([ 'xs', 'sm' ]);
		})(jQuery);
	</script>
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