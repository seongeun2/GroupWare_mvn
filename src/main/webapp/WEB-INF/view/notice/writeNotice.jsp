<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
	  #container { box-sizing: border-box; width:70%;}
		
		#writeform { box-sizing: border-box; }
		
		#writeform .inputtitle {
			 background: #3498db;
			  background-image: -webkit-linear-gradient(top, #3498db, #2980b9);
			  background-image: -moz-linear-gradient(top, #3498db, #2980b9);
			  background-image: -ms-linear-gradient(top, #3498db, #2980b9);
			  background-image: -o-linear-gradient(top, #3498db, #2980b9);
			  background-image: linear-gradient(to bottom, #3498db, #2980b9);
			  -webkit-border-radius: 16;
			  -moz-border-radius: 16;
			  border-radius: 16px;
			  text-shadow: 1px 1px 0px #7d3d7d;
			  -webkit-box-shadow: 1px 1px 11px #754075;
			  -moz-box-shadow: 1px 1px 11px #754075;
			  box-shadow: 1px 1px 11px #754075;
			  font-family: Arial;
			  color: #f7edf7;
			  font-size: 14px;
			  padding: 5px 5px 5px 5px;
			  border-top: solid #666666 1px;
			  border-right: solid #666666 1px;
			  border-bottom: solid #666666 1px;
			  border-left: solid #666666 1px;
			  text-decoration: none;
			  width:8%;
			  text-align:center;
		}
		
		#writeform .inputitem { 
			display: block;
			font-family: "Helvetica Neue", Arial, sans-serif;
			border-style: solid;
			border-width: 1px;
			border-color: #dedede;
			margin-bottom: 20px;
			font-size: 14px;
			padding: 11px 25px;
			padding-left: 55px;
			width: 70%;
			color: #777;
			box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset;
			-moz-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset;
			-webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset; 
			transition: border 0.15s linear 0s, box-shadow 0.15s linear 0s, color 0.15s linear 0s;
			-webkit-transition: border 0.15s linear 0s, box-shadow 0.15s linear 0s, color 0.15s linear 0s;
			-moz-transition: border 0.15s linear 0s, box-shadow 0.15s linear 0s, color 0.15s linear 0s;
			-o-transition: border 0.15s linear 0s, box-shadow 0.15s linear 0s, color 0.15s linear 0s;
		}
		
		#writeform .inputitem:focus { 
			color: #333;
			border-color: rgba(41, 92, 161, 0.4);
			box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset, 0 0 8px rgba(41, 92, 161, 0.6);
			-moz-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset, 0 0 8px rgba(41, 92, 161, 0.6);
			-webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset, 0 0 8px rgba(41, 92, 161, 0.6);
			outline: 0 none; 
		}
		
		#writeform input#sender {
			background: #fff url('user.png') 5px 4px no-repeat;
		}
		#writeform input#receiver {
			background: #fff url('email.png') 5px 4px no-repeat;
		}
		#writeform input#title {
			background: #fff url('website.png') 5px 4px no-repeat;
		}
		
		#writeform textarea {
		display: block;
			font-family: "Helvetica Neue", Arial, sans-serif;
			border-style: solid;
			border-width: 1px;
			border-color: #dedede;
			margin-bottom: 15px;
			font-size: 14px;
			padding: 11px 25px;
			padding-left: 55px;
			width: 70%;
			height: 180px;
			color: #777;
			box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset;
			-moz-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset;
			-webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset; 
			transition: border 0.15s linear 0s, box-shadow 0.15s linear 0s, color 0.15s linear 0s;
			-webkit-transition: border 0.15s linear 0s, box-shadow 0.15s linear 0s, color 0.15s linear 0s;
			-moz-transition: border 0.15s linear 0s, box-shadow 0.15s linear 0s, color 0.15s linear 0s;
			-o-transition: border 0.15s linear 0s, box-shadow 0.15s linear 0s, color 0.15s linear 0s;
		}
		#writeform textarea:focus {
			color: #333;
			border-color: rgba(41, 92, 161, 0.4);
			box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset, 0 0 8px rgba(40, 90, 160, 0.6);
			-moz-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset, 0 0 8px rgba(40, 90, 160, 0.6);
			-webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset, 0 0 8px rgba(40, 90, 160, 0.6);
			outline: 0 none; 
		}
		#writeform textarea.txtblock {
			background: #fff url('speech.png') 5px 4px no-repeat;
		}
		
		/** custom buttons **/
		#buttons { box-sizing: border-box; float:center;}
		
		#buttons > #centered > .btn { 
			  background: #3498db;
			  background-image: -webkit-linear-gradient(top, #3498db, #2980b9);
			  background-image: -moz-linear-gradient(top, #3498db, #2980b9);
			  background-image: -ms-linear-gradient(top, #3498db, #2980b9);
			  background-image: -o-linear-gradient(top, #3498db, #2980b9);
			  background-image: linear-gradient(to bottom, #3498db, #2980b9);
			  -webkit-border-radius: 16;
			  -moz-border-radius: 16;
			  border-radius: 16px;
			  text-shadow: 1px 1px 0px #7d3d7d;
			  -webkit-box-shadow: 1px 1px 11px #754075;
			  -moz-box-shadow: 1px 1px 11px #754075;
			  box-shadow: 1px 1px 11px #754075;
			  font-family: Arial;
			  color: #f7edf7;
			  font-size: 14px;
			  padding: 10px 10px 10px 10px;
			  border-top: solid #666666 1px;
			  border-right: solid #666666 1px;
			  border-bottom: solid #666666 1px;
			  border-left: solid #666666 1px;
			  text-decoration: none;
		}
		#buttons > .btn:hover {
		  background: #3cb0fd;
		  background-image: -webkit-linear-gradient(top, #3cb0fd, #3498db);
		  background-image: -moz-linear-gradient(top, #3cb0fd, #3498db);
		  background-image: -ms-linear-gradient(top, #3cb0fd, #3498db);
		  background-image: -o-linear-gradient(top, #3cb0fd, #3498db);
		  background-image: linear-gradient(to bottom, #3cb0fd, #3498db);
		  text-decoration: none;
		}
  </style>
</head>
<body>
<br/>
<div class="container" id="container">
  
	<form name="writeform" id="writeform" method="post" action="writeNotice">
		<div class="inputtitle">보내는사람</div>
		<input id="sender" type="text" class="inputitem" name="sender" >
		<div class="inputtitle">받는사람</div>
		<input id="receiver" type="text" class="inputitem" name="receiver" >
		<div class="inputtitle">제목</div>
		<input id="title" type="text" class="inputitem" name="title" >
		<div class="inputtitle">내용</div>
		<textarea name="content" id="content" class="txtblock"></textarea>
		
	    
		<div id="buttons"><center id="centered">
			<input type="reset" name="reset" id="resetbtn" class="btn" value="다시작성">
			<input type="submit" name="submit" id="submitbtn" class="btn" value="전송">
			<input type="button" name="premenu" id="premenubtn" class="btn" value="메인메뉴" onclick="window.location.href='${pageContext.request.contextPath}/main'"></center>
		</div>
	</form><br>
</div>

</body>
</html>