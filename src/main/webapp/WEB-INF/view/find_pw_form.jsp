<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>GroupWare</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="Online Login Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="application/x-javascript"> 
addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } 
$(function(){
	$("#findBtn").click(function(){
		$.ajax({
			url : "../member/find_pw",
			type : "POST",
			data : {
				id : $("#id").val(),
				email : $("#email").val()
			},
			success : function(result) {
				alert(result);
			},
		})
	});
})

</script>
<!-- Meta tag Keywords -->
<!-- css files -->
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/index.css" type="text/css" media="all" /> <!-- Style-CSS --> 
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/index-font.css"> <!-- Font-Awesome-Icons-CSS -->
<!-- //css files -->
<!-- online-fonts -->
<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700,800&amp;subset=latin-ext" rel="stylesheet">
<!-- //online-fonts -->
</head>
<body>
<!-- main -->
<div class="center-container">
	<!--header-->
	<div class="header-w3l">
		<br><br><br><br>
		<h1 style="font-size: 100px">Group Ware</h1>
	</div>
	<!--//header-->
	<div class="main-content-agile">
		<div class="sub-main-w3">	
			<div class="wthree-pro">
				<h2>비밀번호 찾기</h2>
			</div>
			<form action="member/loginDb" method="post">
				<div class="pom-agile">
				
					<input placeholder="Id" id="id" name="id" class="user" type="text" required>
					<span class="icon1"><i class="fa fa-user" aria-hidden="true"></i></span>
				</div>
				
			
				<div class="pom-agile">
					<input  placeholder="Email" id="email" name="email" class="pass" type="text" required>
					<span class="icon2"><i class="fa fa-unlock" aria-hidden="true"></i></span>
				</div>
				<div class="sub-w3l">
					<div class="right-w3l">
						<input type="button" id="findBtn" value="find">
						<input type="button" onclick="history.go(-1);" value="login">
					</div>
					
				</div>
			</form>
		</div>
	</div>
	<!--//main-->
	<!--footer-->
	<!-- <div class="footer">
		<p>&copy; 2017 Online Login Form. All rights reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>
	</div> -->
	<!--//footer-->
</div>
</body>
</html>