<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page  import="cn.com.filmshow.pojo.*,java.util.*" %>
<%    List<GoodsOrder> GoodsOrder=   (List<GoodsOrder>) request.getAttribute("GoodsOrderDatas"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人信息</title>
<link href="${pageContext.request.contextPath }/css/bootstrap.css"
	rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="${pageContext.request.contextPath }/css/style.css"
	rel="stylesheet" type="text/css" media="all" />
<!-- 我的表单样式 -->
<!-- Custom Theme files -->
<script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
<!-- Custom Theme files -->
<meta name="author" content="刘阮云">
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
<link href="${pageContext.request.contextPath }/css/megamenu.css"
	rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
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
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
				});
			});
		</script>
<script>
					function fun_out(){
						<%-- <%
							session.invalidate();
						%> --%>
						window.location="${pageContext.request.contextPath }/exit";
					}
					
				</script>




<!---- start-smoth-scrolling---->
</head>
<body>


	<!-- header-section-starts -->

	<div class="header-top-strip" id="home">
		<div class="container">
			<div class="header-top-left">
				<p>
					<a href="${pageContext.request.contextPath }/support.jsp">24/7
						Customer Care</a> | <a class="play-icon popup-with-zoom-anim"
						href="#small-dialog" href="#"> Resend Booking Confirmation</a>
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
									title="Enter a valid email" /> <input type="text"
									class="email" placeholder="Mobile Number" maxlength="10"
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
				<link href="${pageContext.request.contextPath }/css/popuo-box.css"
					rel="stylesheet" type="text/css" media="all" />
				<script
					src="${pageContext.request.contextPath }/js/jquery.magnific-popup.js"
					type="text/javascript"></script>
				<!---//pop-up-box---->
				<div id="small-dialog1" class="mfp-hide">
					<div class="select-city">
						<h3>Select Your City</h3>
						<select class="list_of_cities"><option value="">Select
								Your City</option>
							<optgroup label="Andhra Pradesh">
								<option style="padding-left: 10px;" value="ANAN">Anantapur</option>
								<option style="padding-left: 10px;" value="CHDM">Chinnamandem</option>
								<option style="padding-left: 10px;" value="GUDR">Gudur</option>
								<option style="padding-left: 10px;" value="GUNT">Guntur</option>
								<option style="padding-left: 10px;" value="JANG">Jangareddy
									Gudem</option>
								<option style="padding-left: 10px;" value="KAKI">Kakinada</option>
								<option style="padding-left: 10px;" value="KURN">Kurnool</option>
								<option style="padding-left: 10px;" value="MART">Martur</option>
								<option style="padding-left: 10px;" value="PRVT">Parvathipuram</option>
								<option style="padding-left: 10px;" value="RAJA">Rajahmundry</option>
								<option style="padding-left: 10px;" value="TENA">Tenali</option>
								<option style="padding-left: 10px;" value="TIRU">Tirupati</option>
								<option style="padding-left: 10px;" value="VIJA">Vijayawada</option>
								<option style="padding-left: 10px;" value="VIZA">Vizag</option>
								<option style="padding-left: 10px;" value="VIZI">Vizianagaram</option>
							</optgroup>
							<optgroup label="Arunachal Pradesh">
								<option style="padding-left: 10px;" value="TAWA">Tawang</option>
								<option style="padding-left: 10px;" value="ZIRO">Ziro</option>
							</optgroup>
							<optgroup label="Assam">
								<option style="padding-left: 10px;" value="DIB">Dibrugarh</option>
								<option style="padding-left: 10px;" value="GUW">Guwahati</option>
								<option style="padding-left: 10px;" value="JORT">Jorhat</option>
								<option style="padding-left: 10px;" value="SIL">Silchar</option>
								<option style="padding-left: 10px;" value="TINS">Tinsukia</option>
							</optgroup>
							<optgroup label="Bihar">
								<option style="padding-left: 10px;" value="HAJI">Hajipur</option>
								<option style="padding-left: 10px;" value="PATN">Patna</option>
							</optgroup>
							<optgroup label="Chhattisgarh">
								<option style="padding-left: 10px;" value="BHILAI">Bhilai</option>
								<option style="padding-left: 10px;" value="BILA">Bilaspur</option>
								<option style="padding-left: 10px;" value="CHAM">Champa</option>
								<option style="padding-left: 10px;" value="DHMT">Dhamtari</option>
								<option style="padding-left: 10px;" value="DURG">Durg</option>
								<option style="padding-left: 10px;" value="JAGD">Jagdalpur</option>
								<option style="padding-left: 10px;" value="KAWA">Kawardha</option>
								<option style="padding-left: 10px;" value="KNGN">Kondagaon</option>
								<option style="padding-left: 10px;" value="KRBA">Korba</option>
								<option style="padding-left: 10px;" value="RAIG">Raigarh</option>
								<option style="padding-left: 10px;" value="RAIPUR">Raipur</option>
								<option style="padding-left: 10px;" value="TNO">Tilda
									Neora</option>
							</optgroup>
							<optgroup label="Croatia">
								<option style="padding-left: 10px;" value="DBRV">Dubrovnik</option>
							</optgroup>
							<optgroup label="Goa">
								<option style="padding-left: 10px;" value="GOA">Goa</option>
							</optgroup>
							<optgroup label="Gujarat">
								<option style="padding-left: 10px;" value="ADPR">Adipur</option>
								<option style="padding-left: 10px;" value="AHD">Ahmedabad</option>
								<option style="padding-left: 10px;" value="AND">Anand</option>
								<option style="padding-left: 10px;" value="ANKL">Ankleshwar</option>
								<option style="padding-left: 10px;" value="BHAR">Bharuch</option>
								<option style="padding-left: 10px;" value="BHNG">Bhavnagar</option>
								<option style="padding-left: 10px;" value="DAMA">Daman</option>
								<option style="padding-left: 10px;" value="GDHAM">Gandhidham</option>
								<option style="padding-left: 10px;" value="GNAGAR">Gandhinagar</option>
								<option style="padding-left: 10px;" value="HIMM">Himmatnagar</option>
								<option style="padding-left: 10px;" value="IDAR">Idar</option>
								<option style="padding-left: 10px;" value="JAM">Jamnagar</option>
								<option style="padding-left: 10px;" value="JETP">Jetpur</option>
								<option style="padding-left: 10px;" value="JUGH">Junagadh</option>
								<option style="padding-left: 10px;" value="KTCH">Kutch</option>
								<option style="padding-left: 10px;" value="NADI">Nadiad</option>
								<option style="padding-left: 10px;" value="NVSR">Navsari</option>
								<option style="padding-left: 10px;" value="PALN">Palanpur</option>
								<option style="padding-left: 10px;" value="PATA">Patan</option>
								<option style="padding-left: 10px;" value="RAJK">Rajkot</option>
								<option style="padding-left: 10px;" value="SANA">Sanand</option>
								<option style="padding-left: 10px;" value="SILV">Silvassa</option>
								<option style="padding-left: 10px;" value="SURT">Surat</option>
								<option style="padding-left: 10px;" value="VAD">Vadodara</option>
								<option style="padding-left: 10px;" value="VLSD">Valsad</option>
								<option style="padding-left: 10px;" value="VAPI">Vapi</option>
							</optgroup>
							<optgroup label="Haryana">
								<option style="padding-left: 10px;" value="AMB">Ambala</option>
								<option style="padding-left: 10px;" value="DHRA">Dharuhera</option>
								<option style="padding-left: 10px;" value="FARI">Faridabad</option>
								<option style="padding-left: 10px;" value="HISR">Hisar</option>
								<option style="padding-left: 10px;" value="JHAJ">Jhajjar</option>
								<option style="padding-left: 10px;" value="JIND">Jind</option>
								<option style="padding-left: 10px;" value="KAIT">Kaithal</option>
								<option style="padding-left: 10px;" value="KARN">Karnal</option>
								<option style="padding-left: 10px;" value="KUND">Kundli</option>
								<option style="padding-left: 10px;" value="KURU">Kurukshetra</option>
								<option style="padding-left: 10px;" value="PNCH">Panchkula</option>
								<option style="padding-left: 10px;" value="PAN">Panipat</option>
								<option style="padding-left: 10px;" value="REWA">Rewari</option>
								<option style="padding-left: 10px;" value="ROH">Rohtak</option>
								<option style="padding-left: 10px;" value="SISA">Sirsa</option>
								<option style="padding-left: 10px;" value="RAIH">Sonipat</option>
								<option style="padding-left: 10px;" value="YAMU">Yamunanagar</option>
							</optgroup>
							<optgroup label="Himachal Pradesh">
								<option style="padding-left: 10px;" value="BADD">Baddi</option>
								<option style="padding-left: 10px;" value="DMSL">Dharamsala</option>
								<option style="padding-left: 10px;" value="HAMI">Hamirpur
									(HP)</option>
								<option style="padding-left: 10px;" value="KANG">Kangra</option>
								<option style="padding-left: 10px;" value="KULU">Kullu</option>
								<option style="padding-left: 10px;" value="MANA">Manali</option>
								<option style="padding-left: 10px;" value="SMLA">Shimla</option>
								<option style="padding-left: 10px;" value="SCO">Solan</option>
							</optgroup>
							<optgroup label="Jammu and Kashmir">
								<option style="padding-left: 10px;" value="JAMM">Jammu</option>
								<option style="padding-left: 10px;" value="KATH">Kathua</option>
								<option style="padding-left: 10px;" value="KATR">Katra</option>
								<option style="padding-left: 10px;" value="LEHA">Ladakh</option>
							</optgroup>
							<optgroup label="Jharkhand">
								<option style="padding-left: 10px;" value="BOKA">Bokaro</option>
								<option style="padding-left: 10px;" value="DOGH">Deoghar</option>
								<option style="padding-left: 10px;" value="DHAN">Dhanbad(Jharkhand)</option>
								<option style="padding-left: 10px;" value="JMDP">Jamshedpur</option>
								<option style="padding-left: 10px;" value="RANC">Ranchi</option>
							</optgroup>
							<optgroup label="Karnataka">
								<option style="padding-left: 10px;" value="BELG">Belgaum</option>
								<option style="padding-left: 10px;" value="BANG">Bengaluru</option>
								<option style="padding-left: 10px;" value="BIDR">Bidar</option>
								<option style="padding-left: 10px;" value="COOR">Coorg</option>
								<option style="padding-left: 10px;" value="DAVA">Davangere</option>
								<option style="padding-left: 10px;" value="GULB">Gulbarga</option>
								<option style="padding-left: 10px;" value="HUBL">Hubli</option>
								<option style="padding-left: 10px;" value="KWAR">Karwar</option>
								<option style="padding-left: 10px;" value="MLR">Mangalore</option>
								<option style="padding-left: 10px;" value="MANI">Manipal</option>
								<option style="padding-left: 10px;" value="MYS">Mysore</option>
								<option style="padding-left: 10px;" value="TUMK">Tumkur</option>
								<option style="padding-left: 10px;" value="UDUP">Udupi</option>
							</optgroup>
							<optgroup label="Kerala">
								<option style="padding-left: 10px;" value="99">Alappuzha</option>
								<option style="padding-left: 10px;" value="ANHL">Anchal</option>
								<option style="padding-left: 10px;" value="ANGA">Angamaly</option>
								<option style="padding-left: 10px;" value="ERNK">Ernakulam</option>
								<option style="padding-left: 10px;" value="KANN">Kannur</option>
								<option style="padding-left: 10px;" value="KARG">Karunagapally</option>
								<option style="padding-left: 10px;" value="KOCH">Kochi</option>
								<option style="padding-left: 10px;" value="KOLM">Kollam</option>
								<option style="padding-left: 10px;" value="KTYM">Kottayam</option>
								<option style="padding-left: 10px;" value="MVLR">Mavellikara</option>
								<option style="padding-left: 10px;" value="THAL">Thalayolaparambu</option>
								<option style="padding-left: 10px;" value="THSR">Thrissur</option>
								<option style="padding-left: 10px;" value="TRIV">Trivandrum</option>
							</optgroup>
							<optgroup label="Madhya Pradesh">
								<option style="padding-left: 10px;" value="BLGT">Balaghat</option>
								<option style="padding-left: 10px;" value="BETU">Betul</option>
								<option style="padding-left: 10px;" value="BHOP">Bhopal</option>
								<option style="padding-left: 10px;" value="CHIN">Chhindwara</option>
								<option style="padding-left: 10px;" value="DEWAS">Dewas</option>
								<option style="padding-left: 10px;" value="GWAL">Gwalior</option>
								<option style="padding-left: 10px;" value="HRDA">Harda</option>
								<option style="padding-left: 10px;" value="IND">Indore</option>
								<option style="padding-left: 10px;" value="JABL">Jabalpur</option>
								<option style="padding-left: 10px;" value="KHDW">Khandwa</option>
								<option style="padding-left: 10px;" value="NMCH">Neemuch</option>
								<option style="padding-left: 10px;" value="RATL">Ratlam</option>
								<option style="padding-left: 10px;" value="SAMP">Sagar</option>
								<option style="padding-left: 10px;" value="SARN">Sarni</option>
								<option style="padding-left: 10px;" value="SEHO">Sehore</option>
								<option style="padding-left: 10px;" value="SEON">Seoni</option>
								<option style="padding-left: 10px;" value="SHIV">Shivpuri</option>
								<option style="padding-left: 10px;" value="UJJN">Ujjain</option>
							</optgroup>
							<optgroup label="Maharashtra">
								<option style="padding-left: 10px;" value="AHMED">Ahmednagar</option>
								<option style="padding-left: 10px;" value="AKOL">Akola</option>
								<option style="padding-left: 10px;" value="ALBG">Alibaug</option>
								<option style="padding-left: 10px;" value="AMRA">Amravati</option>
								<option style="padding-left: 10px;" value="AURA">Aurangabad</option>
								<option style="padding-left: 10px;" value="BARA">Baramati</option>
								<option style="padding-left: 10px;" value="BEED">Beed</option>
								<option style="padding-left: 10px;" value="BHIW">Bhiwandi</option>
								<option style="padding-left: 10px;" value="BOIS">Boisar</option>
								<option style="padding-left: 10px;" value="BULD">Buldana</option>
								<option style="padding-left: 10px;" value="CHAN">Chandrapur</option>
								<option style="padding-left: 10px;" value="DHLE">Dhule</option>
								<option style="padding-left: 10px;" value="DHUL">Dhulia</option>
								<option style="padding-left: 10px;" value="INDA">Indapur</option>
								<option style="padding-left: 10px;" value="JALG">Jalgaon</option>
								<option style="padding-left: 10px;" value="KHED">Khed</option>
								<option style="padding-left: 10px;" value="KHOP">Khopoli</option>
								<option style="padding-left: 10px;" value="KOLH">Kolhapur</option>
								<option style="padding-left: 10px;" value="LAT">Latur</option>
								<option style="padding-left: 10px;" value="LAVA">Lavasa</option>
								<option style="padding-left: 10px;" value="LNVL">Lonavala</option>
								<option style="padding-left: 10px;" value="MHAD">Mahad</option>
								<option style="padding-left: 10px;" value="MALE">Malegaon</option>
								<option style="padding-left: 10px;" value="MUMBAI">Mumbai</option>
								<option style="padding-left: 10px;" value="NAGP">Nagpur</option>
								<option style="padding-left: 10px;" value="NAND">Nanded</option>
								<option style="padding-left: 10px;" value="NASK">Nashik</option>
								<option style="padding-left: 10px;" value="PALG">Palghar</option>
								<option style="padding-left: 10px;" value="PANC">Panchgani</option>
								<option style="padding-left: 10px;" value="PARB">Parbhani</option>
								<option style="padding-left: 10px;" value="PEN">Pen</option>
								<option style="padding-left: 10px;" value="PHAL">Phaltan</option>
								<option style="padding-left: 10px;" value="PIMP">Pimpri</option>
								<option style="padding-left: 10px;" value="PUNE">Pune</option>
								<option style="padding-left: 10px;" value="RAI">Raigad</option>
								<option style="padding-left: 10px;" value="SANG">Sangli</option>
								<option style="padding-left: 10px;" value="SATA">Satara</option>
								<option style="padding-left: 10px;" value="SOLA">Solapur</option>
								<option style="padding-left: 10px;" value="TMB">Tembhode</option>
								<option style="padding-left: 10px;" value="UDGR">Udgir</option>
								<option style="padding-left: 10px;" value="WARD">Wardha</option>
							</optgroup>
							<optgroup label="Meghalaya">
								<option style="padding-left: 10px;" value="RNG">Rongjeng</option>
								<option style="padding-left: 10px;" value="SHLG">Shillong</option>
							</optgroup>
							<optgroup label="Nagaland">
								<option style="padding-left: 10px;" value="DMPR">Dimapur</option>
							</optgroup>
							<optgroup label="NCR">
								<option style="padding-left: 10px;" value="NCR">National
									Capital Region (NCR)</option>
							</optgroup>
							<optgroup label="Orissa">
								<option style="padding-left: 10px;" value="BLSR">Balasore</option>
								<option style="padding-left: 10px;" value="BHUB">Bhubaneshwar</option>
								<option style="padding-left: 10px;" value="PURI">Puri</option>
								<option style="padding-left: 10px;" value="SAMB">Sambalpur</option>
							</optgroup>
							<optgroup label="Punjab">
								<option style="padding-left: 10px;" value="ABOR">Abohar</option>
								<option style="padding-left: 10px;" value="AHMG">Ahmedgarh</option>
								<option style="padding-left: 10px;" value="AMRI">Amritsar</option>
								<option style="padding-left: 10px;" value="BNGA">Banga</option>
								<option style="padding-left: 10px;" value="BAR">Barnala</option>
								<option style="padding-left: 10px;" value="BHAT">Bathinda</option>
								<option style="padding-left: 10px;" value="CHD">Chandigarh</option>
								<option style="padding-left: 10px;" value="HOSH">Hoshiarpur</option>
								<option style="padding-left: 10px;" value="JALA">Jalandhar</option>
								<option style="padding-left: 10px;" value="KHAN">Khanna</option>
								<option style="padding-left: 10px;" value="KOTK">Kotkapura</option>
								<option style="padding-left: 10px;" value="LUDH">Ludhiana</option>
								<option style="padding-left: 10px;" value="MNSA">Mansa</option>
								<option style="padding-left: 10px;" value="MOGA">Moga</option>
								<option style="padding-left: 10px;" value="MOHL">Mohali</option>
								<option style="padding-left: 10px;" value="NAVN">Nawanshahr</option>
								<option style="padding-left: 10px;" value="PATH">Pathankot</option>
								<option style="padding-left: 10px;" value="PATI">Patiala</option>
								<option style="padding-left: 10px;" value="PATR">Patran</option>
								<option style="padding-left: 10px;" value="RUPN">Rupnagar</option>
								<option style="padding-left: 10px;" value="SANR">Sangrur</option>
								<option style="padding-left: 10px;" value="ZIRK">Zirakpur</option>
							</optgroup>
							<optgroup label="Rajasthan">
								<option style="padding-left: 10px;" value="ABRD">Abu
									Road</option>
								<option style="padding-left: 10px;" value="AJMER">Ajmer</option>
								<option style="padding-left: 10px;" value="ALSR">Alsisar
									(Rajasthan)</option>
								<option style="padding-left: 10px;" value="ALWR">Alwar</option>
								<option style="padding-left: 10px;" value="BANS">Banswara</option>
								<option style="padding-left: 10px;" value="BEAW">Beawar</option>
								<option style="padding-left: 10px;" value="BHIL">Bhilwara</option>
								<option style="padding-left: 10px;" value="BHWD">Bhiwadi</option>
								<option style="padding-left: 10px;" value="BIK">Bikaner</option>
								<option style="padding-left: 10px;" value="DAUS">Dausa</option>
								<option style="padding-left: 10px;" value="JAIP">Jaipur</option>
								<option style="padding-left: 10px;" value="JSMR">Jaisalmer</option>
								<option style="padding-left: 10px;" value="JODH">Jodhpur</option>
								<option style="padding-left: 10px;" value="KISH">Kishangarh</option>
								<option style="padding-left: 10px;" value="KOTA">Kota</option>
								<option style="padding-left: 10px;" value="NEEM">Neemrana</option>
								<option style="padding-left: 10px;" value="SIKR">Sikar</option>
								<option style="padding-left: 10px;" value="SRIG">Sri
									Ganganagar</option>
								<option style="padding-left: 10px;" value="UDAI">Udaipur</option>
							</optgroup>
							<optgroup label="Singapore">
								<option style="padding-left: 10px;" value="SING">Singapore</option>
							</optgroup>
							<optgroup label="Tamil Nadu">
								<option style="padding-left: 10px;" value="ARIY">Ariyalur</option>
								<option style="padding-left: 10px;" value="ARNI">Arni</option>
								<option style="padding-left: 10px;" value="ARUP">Aruppukottai</option>
								<option style="padding-left: 10px;" value="CHEN">Chennai</option>
								<option style="padding-left: 10px;" value="COIM">Coimbatore</option>
								<option style="padding-left: 10px;" value="CUDD">Cuddalore</option>
								<option style="padding-left: 10px;" value="DHAR">Dharapuram</option>
								<option style="padding-left: 10px;" value="DMPI">Dharmapuri</option>
								<option style="padding-left: 10px;" value="DIND">Dindigul</option>
								<option style="padding-left: 10px;" value="EROD">Erode</option>
								<option style="padding-left: 10px;" value="KNPM">Kanchipuram</option>
								<option style="padding-left: 10px;" value="KUMB">Kumbakonam</option>
								<option style="padding-left: 10px;" value="MADU">Madurai</option>
								<option style="padding-left: 10px;" value="MTPM">Mettuppalayam</option>
								<option style="padding-left: 10px;" value="OOTY">Ooty</option>
								<option style="padding-left: 10px;" value="POND">Pondicherry</option>
								<option style="padding-left: 10px;" value="PUDH">Pudhukottai</option>
								<option style="padding-left: 10px;" value="SALM">Salem</option>
								<option style="padding-left: 10px;" value="SIV">Sivakasi</option>
								<option style="padding-left: 10px;" value="TAJO">Tanjore</option>
								<option style="padding-left: 10px;" value="TENK">Tenkasi</option>
								<option style="padding-left: 10px;" value="TIRV">Tirunelveli</option>
								<option style="padding-left: 10px;" value="TIRP">Tirupur</option>
								<option style="padding-left: 10px;" value="TRIC">Trichy</option>
								<option style="padding-left: 10px;" value="VELL">Vellore</option>
							</optgroup>
							<optgroup label="Telangana">
								<option style="padding-left: 10px;" value="ADIL">Adilabad</option>
								<option style="padding-left: 10px;" value="AMAN">Amangal</option>
								<option style="padding-left: 10px;" value="HYD">Hyderabad</option>
								<option style="padding-left: 10px;" value="KARIM">Karimnagar</option>
								<option style="padding-left: 10px;" value="KHAM">Khammam</option>
								<option style="padding-left: 10px;" value="MRGD">Miryalaguda</option>
								<option style="padding-left: 10px;" value="NIZA">Nizamabad</option>
								<option style="padding-left: 10px;" value="PEDA">Peddapalli</option>
								<option style="padding-left: 10px;" value="POCH">Pochampally</option>
								<option style="padding-left: 10px;" value="SDDP">Siddipet</option>
								<option style="padding-left: 10px;" value="SURY">Suryapet</option>
								<option style="padding-left: 10px;" value="UPPA">Uppal</option>
								<option style="padding-left: 10px;" value="WAR">Warangal</option>
							</optgroup>
							<optgroup label="Tripura ">
								<option style="padding-left: 10px;" value="AGAR">Agartala</option>
							</optgroup>
							<optgroup label="Uttar Pradesh">
								<option style="padding-left: 10px;" value="AGRA">Agra</option>
								<option style="padding-left: 10px;" value="ALI">Aligarh</option>
								<option style="padding-left: 10px;" value="ALLH">Allahabad</option>
								<option style="padding-left: 10px;" value="BARE">Bareilly</option>
								<option style="padding-left: 10px;" value="BIJ">Bijnor</option>
								<option style="padding-left: 10px;" value="GHAR">Ghazipur</option>
								<option style="padding-left: 10px;" value="GRKP">Gorakhpur</option>
								<option style="padding-left: 10px;" value="KANP">Kanpur</option>
								<option style="padding-left: 10px;" value="LUCK">Lucknow</option>
								<option style="padding-left: 10px;" value="MATH">Mathura</option>
								<option style="padding-left: 10px;" value="MERT">Meerut</option>
								<option style="padding-left: 10px;" value="MORA">Moradabad</option>
								<option style="padding-left: 10px;" value="MUZ">Muzaffarnagar</option>
								<option style="padding-left: 10px;" value="RENU">Renukoot</option>
								<option style="padding-left: 10px;" value="SAHA">Saharanpur</option>
								<option style="padding-left: 10px;" value="VAR">Varanasi</option>
							</optgroup>
							<optgroup label="Uttarakhand">
								<option style="padding-left: 10px;" value="DEH">Dehradun</option>
								<option style="padding-left: 10px;" value="HRDR">Haridwar</option>
								<option style="padding-left: 10px;" value="MSS">Mussoorie</option>
								<option style="padding-left: 10px;" value="NAIN">Nainital</option>
								<option style="padding-left: 10px;" value="RAMN">Ramnagar</option>
								<option style="padding-left: 10px;" value="RKES">Rishikesh</option>
								<option style="padding-left: 10px;" value="ROOR">Roorkee</option>
								<option style="padding-left: 10px;" value="RUDP">Rudrapur</option>
							</optgroup>
							<optgroup label="West Bengal">
								<option style="padding-left: 10px;" value="ASANSOL">Asansol</option>
								<option style="padding-left: 10px;" value="BEHA">Berhampore</option>
								<option style="padding-left: 10px;" value="BLPR">Bolpur</option>
								<option style="padding-left: 10px;" value="BURD">Burdwan</option>
								<option style="padding-left: 10px;" value="COBE">Cooch
									Behar</option>
								<option style="padding-left: 10px;" value="DARJ">Darjeeling</option>
								<option style="padding-left: 10px;" value="DURGA">Durgapur</option>
								<option style="padding-left: 10px;" value="HALD">Haldia</option>
								<option style="padding-left: 10px;" value="HOOG">Hooghly</option>
								<option style="padding-left: 10px;" value="HWRH">Howrah</option>
								<option style="padding-left: 10px;" value="JPG">Jalpaiguri</option>
								<option style="padding-left: 10px;" value="KOLK">Kolkata</option>
								<option style="padding-left: 10px;" value="RANA">Ranaghat</option>
								<option style="padding-left: 10px;" value="SILI">Siliguri</option>
							</optgroup></select>
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
				<!-- Large modal -->
				<button class="btn btn-primary" data-toggle="modal"
					onclick="fun_out()">注销</button>
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="myLargeModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title" id="myModalLabel">
									Login/Registration</h4>
							</div>
							<div class="modal-body">
								<div class="row">
									<div class="col-md-8"
										style="border-right: 1px dotted #C2C2C2; padding-right: 30px;">
										<!-- Nav tabs -->
										<ul class="nav nav-tabs">
											<li class="active"><a href="#Login" data-toggle="tab">Login</a></li>
											<li><a href="#Registration" data-toggle="tab">Registration</a></li>
										</ul>
										<!-- Tab panes -->
										<div class="tab-content">
											<div class="tab-pane active" id="Login">
												<form role="form" class="form-horizontal">
													<div class="form-group">
														<label for="email" class="col-sm-2 control-label">
															Email</label>
														<div class="col-sm-10">
															<input type="email" class="form-control" id="email1"
																placeholder="Email" />
														</div>
													</div>
													<div class="form-group">
														<label for="exampleInputPassword1"
															class="col-sm-2 control-label"> Password</label>
														<div class="col-sm-10">
															<input type="password" class="form-control"
																id="exampleInputPassword1" placeholder="password" />
														</div>
													</div>
													<div class="row">
														<div class="col-sm-2"></div>
														<div class="col-sm-10">
															<button type="submit" class="btn btn-primary btn-sm">
																Submit</button>
															<a href="javascript:;">Forgot your password?</a>
														</div>
													</div>
												</form>
											</div>
											<div class="tab-pane" id="Registration">
												<form role="form" class="form-horizontal">
													<div class="form-group">
														<label for="email" class="col-sm-2 control-label">
															Name</label>
														<div class="col-sm-10">
															<div class="row">
																<div class="col-md-3">
																	<select class="form-control">
																		<option>Mr.</option>
																		<option>Ms.</option>
																		<option>Mrs.</option>
																	</select>
																</div>
																<div class="col-md-9">
																	<input type="text" class="form-control"
																		placeholder="Name" />
																</div>
															</div>
														</div>
													</div>
													<div class="form-group">
														<label for="email" class="col-sm-2 control-label">
															Email</label>
														<div class="col-sm-10">
															<input type="email" class="form-control" id="email"
																placeholder="Email" />
														</div>
													</div>
													<div class="form-group">
														<label for="mobile" class="col-sm-2 control-label">
															Mobile</label>
														<div class="col-sm-10">
															<input type="email" class="form-control" id="mobile"
																placeholder="Mobile" />
														</div>
													</div>
													<div class="form-group">
														<label for="password" class="col-sm-2 control-label">
															Password</label>
														<div class="col-sm-10">
															<input type="password" class="form-control" id="password"
																placeholder="Password" />
														</div>
													</div>
													<div class="row">
														<div class="col-sm-2"></div>
														<div class="col-sm-10">
															<button type="button" class="btn btn-primary btn-sm">
																Save & Continue</button>
															<button type="button" class="btn btn-default btn-sm">
																Cancel</button>
														</div>
													</div>
												</form>
											</div>
										</div>
										<div id="OR" class="hidden-xs">OR</div>
									</div>
									<div class="col-md-4">
										<div class="row text-center sign-with">
											<div class="col-md-12">
												<h3 class="other-nw">Sign in with</h3>
											</div>
											<div class="col-md-12">
												<div class="btn-group btn-group-justified">
													<a href="#" class="btn btn-primary">Facebook</a> <a
														href="#" class="btn btn-danger"> Google</a>
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
	<div>
	<div class="container">
		<div class="main-content">
			<div class="header">
				<div class="logo">
					<a href="${pageContext.request.contextPath }/index.jsp"><h1>MyShow</h1></a>
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
						<li><a
							href="${pageContext.request.contextPath }/aboutToIndex">主页</a></li>
						<!-- Mega Menu -->
						<li class="dropdown w3_megamenu-fw"><a
							href="${pageContext.request.contextPath }/movies.jsp"
							data-toggle="dropdown" class="dropdown-toggle">类型<b
								class="caret"></b></a>
							<ul class="dropdown-menu fullwidth">
								<li class="w3_megamenu-content">
									<div class="row">
										<h5 class="movies-page">
											for movies page - <a
												href="${pageContext.request.contextPath }/movies.jsp">Click
												here</a>
										</h5>
										<a
											href="${pageContext.request.contextPath }/movie-single2d.jsp"><div
												class="col-sm-4">
												<h3 class="title">2D电影</h3>
												<!-- <ul class="mov_list">
						<li>99%</li>
						<li><a href="movie-single.jsp">Baahubali (Telugu) (U/A)</a></li>
					</ul>
					<ul class="mov_list">
						<li>100%</li>
						<li><a href="movie-single.jsp">Baahubali (Hindi) (U/A)</a></li>
					</ul>
					<ul class="mov_list">
						<li>98%</li>
						<li><a href="movie-single.jsp">Baahubali (English) (U/A)</a></li>
					</ul>
					<ul class="mov_list">
						<li>80%</li>
						<li><a href="movie-single.jsp">Jurassic World (3D Hindi) (U/A)</a></li>
					</ul>
					<ul class="mov_list">
						<li>65%</li>
						<li><a href="movie-single.jsp">Hamari Adhuri Kahani (U)</a></li>
					</ul> -->
											</div></a>
										<!-- end col-4 -->
										<a
											href="${pageContext.request.contextPath }/movie-single3d.jsp">
											<div class="col-sm-4 movie-dd">
												<h3 class="title">3D电影</h3>
												<!-- <p><a href="movie-single.jsp">ABCD 2 (3D) (4DX)</a><span>... (Tomorrow, 19 Jun)</span></p>
										<p><a href="movie-single.jsp">ABCD 2 (3D) (4DX)</a><span>... (Tomorrow, 19 Jun)</span></p>
										<p><a href="movie-single.jsp">ABCD 2 (3D) (4DX)</a><span>... (Tomorrow, 19 Jun)</span></p>
										<p><a href="movie-single.jsp">ABCD 2 (3D) (4DX)</a><span>... (Tomorrow, 19 Jun)</span></p>
										<p><a href="movie-single.jsp">ABCD 2 (3D) (4DX)</a><span>... (Tomorrow, 19 Jun)</span></p> -->
											</div>
										</a>
										<!-- end col-4 -->
										<a href="${pageContext.request.contextPath }/movie-single.jsp">
											<div class="col-sm-4 movie-dd">
												<h3 class="title">IMAX</h3>
												<!-- <p><a href="movie-single.jsp">ABCD 2 (3D) (4DX)</a><span>... (Tomorrow, 19 Jun)</span></p>
										<p><a href="movie-single.jsp">ABCD 2 (3D) (4DX)</a><span>... (Tomorrow, 19 Jun)</span></p>
										<p><a href="movie-single.jsp">ABCD 2 (3D) (4DX)</a><span>... (Tomorrow, 19 Jun)</span></p>
										<p><a href="movie-single.jsp">ABCD 2 (3D) (4DX)</a><span>... (Tomorrow, 19 Jun)</span></p>
										<p><a href="movie-single.jsp">ABCD 2 (3D) (4DX)</a><span>... (Tomorrow, 19 Jun)</span></p>                                    		
                                     -->
											</div>
										</a>
										<!-- end col-4 -->
										<div class="clearfix"></div>
										<div class="menu-featured-movies">
											<h3 class="title">Featured Trailers</h3>
											<div class="col-md-2 menu-featured-movies-img">
												<a
													href="${pageContext.request.contextPath }/movie-single.jsp"><img
													src="${pageContext.request.contextPath }/images/mf1.jpg"
													alt="" /></a>
											</div>
											<div class="col-md-2 menu-featured-movies-img">
												<a
													href="${pageContext.request.contextPath }/movie-single.jsp"><img
													src="${pageContext.request.contextPath }/images/mf2.jpg"
													alt="" /></a>
											</div>
											<div class="col-md-2 menu-featured-movies-img">
												<a
													href="${pageContext.request.contextPath }/movie-single.jsp"><img
													src="${pageContext.request.contextPath }/images/mf3.jpg"
													alt="" /></a>
											</div>
											<div class="col-md-2 menu-featured-movies-img">
												<a
													href="${pageContext.request.contextPath }/movie-single.jsp"><img
													src="${pageContext.request.contextPath }/images/mf3.jpg"
													alt="" /></a>
											</div>
											<div class="col-md-2 menu-featured-movies-img">
												<a
													href="${pageContext.request.contextPath }/movie-single.jsp"><img
													src="${pageContext.request.contextPath }/images/mf3.jpg"
													alt="" /></a>
											</div>
											<div class="col-md-2 menu-featured-movies-img">
												<a
													href="${pageContext.request.contextPath }/movie-single.jsp"><img
													src="${pageContext.request.contextPath }/images/mf3.jpg"
													alt="" /></a>
											</div>
											<div class="clearfix"></div>
										</div>
									</div> <!-- end row -->
									<hr>

								</li>
							</ul></li>
						<li class="dropdown w3_megamenu-fw"><a href="#"
							data-toggle="dropdown" class="dropdown-toggle">影院选择<b
								class="caret"></b></a>
							<ul class="dropdown-menu half">
								<li class="w3_megamenu-content withdesc">
									<div class="row">
										<h5 class="movies-page">
											for events page - <a
												href="${pageContext.request.contextPath }/events.jsp">Click
												here</a>
										</h5>
										<h3 class="title">Featured Events</h3>
										<div class="col-sm-3">
											<div class="e-movie">
												<div class="e-movie-img">
													<a href="${pageContext.request.contextPath }/events.jsp"><img
														src="${pageContext.request.contextPath }/images/f2.jpg"
														alt="" /></a>
												</div>
												<div class="e-buy-tickets">
													<a
														href="${pageContext.request.contextPath }/event-payment.jsp">BUY
														TICKETS</a>
												</div>
											</div>
										</div>
										<div class="col-sm-3">
											<div class="e-movie">
												<div class="e-movie-img">
													<a href="${pageContext.request.contextPath }/events.jsp"><img
														src="${pageContext.request.contextPath }/images/f3.jpg"
														alt=""></a>
												</div>
												<div class="e-buy-tickets">
													<a
														href="${pageContext.request.contextPath }/event-payment.jsp">BUY
														TICKETS</a>
												</div>
											</div>
										</div>
										<div class="col-sm-3">
											<div class="e-movie">
												<div class="e-movie-img">
													<a href="${pageContext.request.contextPath }/events.jsp"><img
														src="${pageContext.request.contextPath }/images/f4.jpg"
														alt="" /></a>
												</div>
												<div class="e-buy-tickets">
													<a
														href="${pageContext.request.contextPath }/event-payment.jsp">BUY
														TICKETS</a>
												</div>
											</div>
										</div>
										<div class="col-sm-3">
											<div class="e-movie">
												<div class="e-movie-img">
													<a href="${pageContext.request.contextPath }/events.jsp"><img
														src="${pageContext.request.contextPath }/images/f1.jpg"
														alt="" /></a>
												</div>
												<div class="e-buy-tickets">
													<a
														href="${pageContext.request.contextPath }/event-payment.jsp">BUY
														TICKETS</a>
												</div>
											</div>
										</div>
									</div>
								</li>
							</ul></li>
						<%-- <li class="dropdown w3_megamenu-fw"><a href="#" data-toggle="dropdown" class="dropdown-toggle">Plays<b class="caret"></b></a>
                        <ul class="dropdown-menu half3">
                            <li class="w3_megamenu-content withoutdesc">
                                <div class="row">
								<h5 class="movies-page">for plays page - <a href="${pageContext.request.contextPath }/plays.jsp">Click here</a> </h5>
								<h3 class="title">Featured Events</h3>
                                    <div class="col-sm-3">
                                    	<div class="e-movie">
								<div class="e-movie-img">
									<a href="${pageContext.request.contextPath }/plays.jsp"><img src="${pageContext.request.contextPath }/images/f2.jpg" alt="" /></a>
								</div>
								<div class="e-buy-tickets">
									<a href="${pageContext.request.contextPath }/event-payment.jsp">BUY TICKETS</a>
								</div>
							</div>
                                    </div>
                                    <div class="col-sm-3">
                                    	<div class="e-movie">
								<div class="e-movie-img">
									<a href="${pageContext.request.contextPath }/plays.jsp"><img src="${pageContext.request.contextPath }/images/f3.jpg" alt=""></a>
								</div>
								<div class="e-buy-tickets">
									<a href="${pageContext.request.contextPath }/event-payment.jsp">BUY TICKETS</a>
								</div>
							</div>
                                    </div>
                                    <div class="col-sm-3">
                                    	<div class="e-movie">
								<div class="e-movie-img">
									<a href="${pageContext.request.contextPath }/plays.jsp"><img src="${pageContext.request.contextPath }/images/f4.jpg" alt="" /></a>
								</div>
								<div class="e-buy-tickets">
									<a href="${pageContext.request.contextPath }/event-payment.jsp">BUY TICKETS</a>
								</div>
							</div>
                                    </div>
                                    <div class="col-sm-3">
                                    	<div class="e-movie">
								<div class="e-movie-img">
									<a href="${pageContext.request.contextPath }/plays.jsp"><img src="${pageContext.request.contextPath }/images/f1.jpg" alt="" /></a>
								</div>
								<div class="e-buy-tickets">
									<a href="${pageContext.request.contextPath }/event-payment.jsp">BUY TICKETS</a>
								</div>
							</div>
                                    </div>
                                </div>
                            </li>
                        </ul>
					</li> --%>
						<%-- <li class="dropdown"><a href="#" data-toggle="dropdown" class="dropdown-toggle">Sports<b class="caret"></b></a>
							 <ul class="dropdown-menu half3">
                            <li class="w3_megamenu-content withoutdesc">
                                <div class="row">
								<h5 class="movies-page">for sports page - <a href="${pageContext.request.contextPath }/sports.jsp">Click here</a> </h5>
								<h3 class="title">Featured Sports</h3>
                                    <div class="col-sm-3">
                                    	<div class="e-movie">
								<div class="e-movie-img">
									<a href="${pageContext.request.contextPath }/sports.jsp"><img src="${pageContext.request.contextPath }/images/me1.jpg" alt="" /></a>
									<a class="plays-go" href="#">Volleyball is a team sport</a>
								</div>
							</div>
                                    </div>
                                    <div class="col-sm-3">
                                    	<div class="e-movie">
								<div class="e-movie-img">
									<a href="${pageContext.request.contextPath }/sports.jsp"><img src="${pageContext.request.contextPath }/images/me2.jpg" alt="" /></a>
									<a class="plays-go" href="#">Chase, we're going to win races.</a>
								</div>
							</div>
                                    </div>
                                    <div class="col-sm-3">
                                    	<div class="e-movie">
								<div class="e-movie-img">
									<a href="${pageContext.request.contextPath }/sports.jsp"><img src="${pageContext.request.contextPath }/images/me3.jpg" alt="" /></a>
									<a class="plays-go" href="#">2015 The action or activity of skating on ice skates</a>
								</div>
							</div>
                                    </div>
                                    <div class="col-sm-3">
                                    	<div class="e-movie">
								<div class="e-movie-img">
									<a href="${pageContext.request.contextPath }/sports.jsp"><img src="${pageContext.request.contextPath }/images/me4.jpg" alt="" /></a>
									<a class="plays-go" href="#">SVM Bowling & Gaming</a>
								</div>
							</div>
                                    </div>
                                </div>
                            </li> --%>
					</ul>
					<!-- end dropdown-menu -->
					</li>
					<%-- <li class="dropdown active"><a href="#" data-toggle="dropdown" class="dropdown-toggle">Pages<b class="caret"></b></a>
							 <ul class="dropdown-menu" role="menu">

	<li><a href="${pageContext.request.contextPath }/about.jsp">About</a></li>
	<li><a href="${pageContext.request.contextPath }/blog.jsp">Blog</a></li>
	<li><a href="${pageContext.request.contextPath }/404.jsp">404</a></li>
	<li><a href="${pageContext.request.contextPath }/contact.jsp">我的</a></li>
	<li><a href="${pageContext.request.contextPath }/faq.jsp">FAQs</a></li>
	<li><a href="${pageContext.request.contextPath }/about.jsp">Current Openings</a></li>
                            <li class="dropdown-submenu">
                                <a href="#">News</a>
								<ul class="dropdown-menu">
																	<li><a href="${pageContext.request.contextPath }/press.jsp">Press Release</a></li>
	<li><a href="${pageContext.request.contextPath }/public-relations.jsp">Public Relations</a></li>
	<li><a href="${pageContext.request.contextPath }/press.jsp">Press Coverage</a></li>
								</ul><!-- end dropdown-menu -->
                            </li><!-- end dropdown-submenu -->
                        </ul>
                       <!-- end dropdown-menu -->
					</li><!-- end standard drop down --> --%>
					<!-- end dropdown w3_megamenu-fw -->
					</ul>
					<!-- end nav navbar-nav -->

					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown active"><a href="#"
							data-toggle="dropdown" class="dropdown-toggle">我的<b
								class="caret"></b></a>
							<ul class="dropdown-menu" role="menu">

								<li><a href="${pageContext.request.contextPath }/about.jsp">About</a></li>
								<li><a href="${pageContext.request.contextPath }/blog.jsp">Blog</a></li>
								<li><a href="${pageContext.request.contextPath }/404.jsp">404</a></li>
								<li><a
									href="${pageContext.request.contextPath }/contact.jsp">我的</a></li>
								<li><a href="${pageContext.request.contextPath }/faq.jsp">FAQs</a></li>
								<li><a href="${pageContext.request.contextPath }/about.jsp">Current
										Openings</a></li>
								<li class="dropdown-submenu"><a href="#">News</a>
									<ul class="dropdown-menu">
										<li><a
											href="${pageContext.request.contextPath }/press.jsp">Press
												Release</a></li>
										<li><a
											href="${pageContext.request.contextPath }/public-relations.jsp">Public
												Relations</a></li>
										<li><a
											href="${pageContext.request.contextPath }/press.jsp">Press
												Coverage</a></li>
									</ul> <!-- end dropdown-menu --></li>
								<!-- end dropdown-submenu -->
							</ul> <!-- end dropdown-menu --></li>
						<!-- <li class="dropdown"><a href="#"  class="dropdown-toggle">我的<b class="caret"></b></a> -->
						<ul class="dropdown-menu">
							<li>
								<form id="contact1" action="#" name="contactform" method="post">
									<!-- <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                        <input type="text" name="name" id="name1" class="form-control" placeholder="Name"> 
                                        <input type="text" name="email" id="email1" class="form-control" placeholder="Email"> 
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                        <input type="text" name="phone" id="phone1" class="form-control" placeholder="Phone">
                                        <input type="text" name="subject" id="subject1" class="form-control" placeholder="Subject"> 
                                    </div>                 
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <textarea class="form-control" name="comments" id="comments1" rows="6" placeholder="Your Message ..."></textarea>
                                    </div>   
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="pull-right">
                                            <input type="submit" value="SEND" id="submit1" class="btn btn-primary small">
                                        </div>  
                                    </div>
									<div class="clearfix"></div>   -->
								</form>
							</li>
						</ul>
						</li>
					</ul>
					<!-- end nav navbar-nav navbar-right -->
				</div>
				<!-- end #navbar-collapse-1 --> </nav>
				<!-- end navbar navbar-default w3_megamenu -->
			</div>
			<!-- end container -->

			<!-- AddThis Smart Layers END -->

			<%-- <ol class="breadcrumb">
			  <li><a href="${pageContext.request.contextPath }/index.jsp">Home</a></li>
			  <li class="active">About</li>
			</ol> --%>
			<!----->
			<div class="about-section">

				<div class="tabs-box">
					<ul class="tabs-menu">
						<li><a href="#tab1"><span>个人信息</span></a></li>
						<li><a href="#tab2"><span>我的订单 </span></a></li>
						<li><a href="#tab3"><span>历史纪录</span></a></li>
						<!-- <li><a href="#tab5"><span>历史记录</span> </a></li> -->
						<li><a href="#tab4"><span>观影评价 </span></a></li>
					</ul>
					<div class="clearfix"></div>
					<div class="tab-grids">
						<div id="tab1" class="tab-grid">
							<h5>个人信息</h5>
							<!-- <p></p> -->
							<div class="about-grids">
								<div class="about-bottom-grids">
									<div class="col-sm-6 about-left">
										<div class="about-left-grids">
											<div class="col-md-2 about-left-img">
												<i class="fa fa-clock-o"></i>
											</div>
											<div class="col-md-10 about-left-info">
												<a href="#">用户名: ${sessionScope.userDate.userName } </a>
												<%-- c:if test="${!empty session.getAttribute("user") }">
					  <button class="btn btn-primary"  data-target="#myModal" onclick="fun_out() ">
   	注销</button>
					  </c:if>
					   <c:if test="${emptysession.getAttribute("user") }">
					   <button class="btn btn-primary" data-toggle="modal" data-target="#myModal">
    登录/注册</button>
					   </c:if> --%>
												<!-- <p></p> -->

											</div>
											<div class="clearfix"></div>
										</div>
									</div>
									<div class="col-sm-6 about-right">
										<div class="about-left-grids">
											<div class="col-md-2 about-left-img">
												<i class="fa fa-users"></i>
											</div>
											<div class="col-md-10 about-left-info">
												<a href="#">联系电话： ${sessionScope.userDate.userPhone }</a>
												<!-- <p></p> -->
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="about-bottom-grids">
									<div class="col-sm-6 about-left">
										<div class="about-left-grids">
											<div class="col-md-2 about-left-img">
												<i class="fa fa-sitemap"></i>
											</div>
											<div class="col-md-10 about-left-info">
												<a href="#">邮箱： ${sessionScope.userDate.userBlank1 }</a>
												<!-- <p></p> -->
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
									<div class="col-sm-6 about-right">
										<div class="about-left-grids">
											<div class="col-md-2 about-left-img">
												<i class="fa fa-pencil-square-o"></i>
											</div>
											<div class="col-md-10 about-left-info">
												<a href="#">密码：</a>
												<!-- <p></p> -->
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="about-bottom-grids">
									<div class="col-sm-6 about-left">
										<div class="about-left-grids">
											<div class="col-md-2 about-left-img">
												<i class="fa fa-book"></i>
											</div>
											<div class="col-md-10 about-left-info">
												<a href="#">预留</a>
												<!-- <p></p> -->
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
									<div class="col-sm-6 about-right">
										<div class="about-left-grids">
											<div class="col-md-2 about-left-img">
												<i class="fa fa-mobile"></i>
											</div>
											<div class="col-md-10 about-left-info">
												<a href="#">预留</a>
												<!-- <p></p> -->
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
						<!-- <li><a href="watched.jsp"><span>看过的电影 </span></a></li> -->
					<div id="tab2" class="tab-grid">
					<h5>我的订单</h5>
							<table class="tabindex" width="100%" border="0" cellpadding="0"
								cellspacing="0">
								<tr>
									<th width="10%" bgcolor="#f8f8f8" scope="col"><div
											align="center">照片</div></th>
									<th width="21%" bgcolor="#f8f8f8" scope="col"><span
										class="titlab">订单号</span><span class="xila">&or;</span></th>
									<th width="22%" bgcolor="#f8f8f8" scope="col"><span
										class="titlab">电影名</span><span class="xila">&or;</span></th>
									<th width="21%" bgcolor="#f8f8f8" scope="col"><span
										class="titlab">座位号</span><span class="xila">&or;</span></th>
									<th width="7%" bgcolor="#f8f8f8" scope="col"><span
										class="titlab">价格</span><span class="xila">&or;</span></th>
									<th width="19%" bgcolor="#f8f8f8" scope="col">操作</th>
								</tr>
								<c:forEach items="${ UserOrdersDatas}" var="data">
									<tr>
										<td bgcolor="#FFFFFF"><div align="center">
												<img src="images/tx.jpg">
											</div></td>
										<td class="datacol" bgcolor="#FFFFFF">${data.yorderCode }</td>
										<td bgcolor="#FFFFFF">${data.filmId }
										</td>
										<td bgcolor="#FFFFFF">${data.yorderRow }</td>
										<td class="yccol" bgcolor="#FFFFFF">${data.yorderBlack2 }元</td>
										<td class="czcol" bgcolor="#FFFFFF"><a href="#">取消订单</a></td>
									</tr>
								</c:forEach>
							</table>
				</div> 
						
						<div id="tab3" class="tab-grid">
							<h5>历史纪录</h5>
							${FilmOrderDatas} ${UserOrdersDatas } ${GoodsOrderDatas }
						 	<%--    --%>
							<table class="tabindex" width="100%" border="0" cellpadding="0"
								cellspacing="0">
								<tr>
									<th width="10%" bgcolor="#f8f8f8" scope="col"><div
											align="center">照片</div></th>
									<th width="21%" bgcolor="#f8f8f8" scope="col"><span
										class="titlab">订单号</span><span class="xila">&or;</span></th>
									<th width="22%" bgcolor="#f8f8f8" scope="col"><span
										class="titlab">电影名</span><span class="xila">&or;</span></th>
									<th width="21%" bgcolor="#f8f8f8" scope="col"><span
										class="titlab">座位号</span><span class="xila">&or;</span></th>
									<th width="7%" bgcolor="#f8f8f8" scope="col"><span
										class="titlab">价格</span><span class="xila">&or;</span></th>
									<th width="19%" bgcolor="#f8f8f8" scope="col">操作</th>
								</tr>
								<c:forEach items="${ UserOrdersDatas}" var="data">
									<tr>
										<td bgcolor="#FFFFFF"><div align="center">
												<img src="images/tx.jpg">
											</div></td>
										<td class="datacol" bgcolor="#FFFFFF">${data.yorderCode }</td>
										<td bgcolor="#FFFFFF">${data.filmId }
										</td>
										<td bgcolor="#FFFFFF">${data.yorderRow }</td>
										<td class="yccol" bgcolor="#FFFFFF">${data.yorderBlack2 }元</td>
										<td class="czcol" bgcolor="#FFFFFF"><a href="#tab4">评价</a></td>
									</tr>
								</c:forEach>
							</table>
						</div>
						<div id="tab4" class="tab-grid">
							<div class="tb-one">
								<h3>评价</h3>
							</div>
							<div class="tb-one">
								<h3>Proin tincidunt id dui et ullamcorper</h3>
								<p>In hac habitasse platea dictumst. Etiam tincidunt
									vulputate feugiat. Ut nulla libero, bibendum sed mauris in,
									faucibus tincidunt arcu. Praesent lobortis pretium nibh a
									faucibus. Vivamus ac nibh convallis, euismod velit ac, feugiat
									magna. Vivamus nunc purus, ornare eget ante eget, luctus
									convallis magna. Ut augue elit, pellentesque in nisi sit amet,
									sodales convallis sapien. Proin imperdiet orci vitae vehicula
									convallis. In sit amet adipiscing nisi. Pellentesque et nibh
									volutpat, dignissim enim quis, mattis ipsum. Integer molestie
									id purus sed tempor. Sed mollis iaculis odio, nec tincidunt
									odio. Cum sociis natoque penatibus et magnis dis parturient
									montes, nascetur ridiculus mus. Integer in nisi nulla. Vivamus
									placerat ligula libero, vitae gravida lectus facilisis et.</p>
							</div>
							<div class="tb-one">
								<h3>Integer eleifend facilisis arcu sit amet consequat</h3>
								<p>Aenean gravida enim ut diam pulvinar, in imperdiet felis
									consectetur. Cras arcu diam, ullamcorper ultricies faucibus
									vel, aliquet eget lacus. Aenean quis adipiscing orci. Nulla non
									aliquet nibh. Maecenas et est sodales, scelerisque mi in,
									tincidunt mauris. Donec sem metus, tincidunt vel luctus quis,
									scelerisque tempus ante. Praesent quis diam sollicitudin,
									eleifend ipsum ac, imperdiet dui. Nulla lobortis at nulla
									laoreet ultrices.</p>
							</div>
							<div class="tb-one">
								<h3>电影评分：</h3>
								<div class="tb-two">
									<input type="text" value="情节" onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = 'Name';}">
									<input type="text" value="剧情" onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = 'Website';}">
									<input type="text" value="画面" onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = 'Email';}">
									<input type="text" value="总体" onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = 'Phone';}">
									<textarea value="评语:" onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = 'Message';}">评语</textarea>
									<div class="t-btn">
										<form>
											<input type="submit" value="发表评论">
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="clearfix"></div>
				</div>
				<!--start-carrer-->
				<!----- Comman-js-files ----->
				<script>
			$(document).ready(function() {
				$("#tab2").hide();
				$("#tab3").hide();
				$("#tab4").hide();
				$(".tabs-menu a").click(function(event){
					event.preventDefault();
					var tab=$(this).attr("href");
					$(".tab-grid").not(tab).css("display","none");
					$(tab).fadeIn("slow");
				});
			});
		</script>
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
						<li><a href="${pageContext.request.contextPath }/watched.jsp">Movie
								Celebrities</a></li>
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
				</div> -->
				<!-- <div class="f-mov-list">
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
						<li><a href="${pageContext.request.contextPath }/regions.jsp">All
								Regions</a></li>
						<li><a
							href="${pageContext.request.contextPath }/cinema-chain.jsp">Cinema
								Chains</a></li>
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
      $( '#myTab a' ).click( function ( e ) {
        e.preventDefault();
        $( this ).tab( 'show' );
      } );

      $( '#moreTabs a' ).click( function ( e ) {
        e.preventDefault();
        $( this ).tab( 'show' );
      } );

      ( function( $ ) {
          // Test for making sure event are maintained
          $( '.js-alert-test' ).click( function () {
            alert( 'Button Clicked: Event was maintained' );
          } );
          fakewaffle.responsiveTabs( [ 'xs', 'sm' ] );
      } )( jQuery );

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
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
	<a href="#home" class="scroll" id="toTop" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>
</body>
</html>