<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
	  #container { box-sizing: border-box; width:70%; margin-left: 100px; }
	  #rform { box-sizing: border-box; }
	  		#rform .rtitle {
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
		
		#rform .ritem { 
			display: block;
			font-family: "Helvetica Neue", Arial, sans-serif;
			border-style: solid;
			border-width: 1px;
			border-color: #dedede;
			margin-bottom: 20px;
			font-size: 14px;
			padding: 11px 25px;
			padding-left: 55px;

			color: #777;
			box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset;
			-moz-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset;
			-webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset; 
			transition: border 0.15s linear 0s, box-shadow 0.15s linear 0s, color 0.15s linear 0s;
			-webkit-transition: border 0.15s linear 0s, box-shadow 0.15s linear 0s, color 0.15s linear 0s;
			-moz-transition: border 0.15s linear 0s, box-shadow 0.15s linear 0s, color 0.15s linear 0s;
			-o-transition: border 0.15s linear 0s, box-shadow 0.15s linear 0s, color 0.15s linear 0s;
		}
		#button { 
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
		.button:hover {
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
<div class="w3-main">
<div id="container">
 	
		<form id="rform" method="post">
			<h2>DB data 시각화</h2>
			<div id="rformdata">
				<label class="rtitle">시각화 항목 선택</label>
				<select class="ritem"  name="item" >
					<option value="title">제목</option>
					<option value="content">내용</option>
				</select>
				
				<label class="rtitle">시각화 방식 선택</label>
				<select class="ritem"  name="type" >
					<option value="wordcloud">wordcloud</option>
					<option value="pie">pie</option>
				</select>

				<%-- <label class="rtitle">image Name</label>
				<input class="ritem" name="imgname" type="text"  value="${imgname}"> --%>

				<input id="button" type="submit" class="form-control" value="확인">
			</div>
		</form>
	
	
		<div id="rformoutput"> 
			<img src="<%=request.getContextPath() %>/img/ccc.jpg"/>
		</div>
</div></div>
</body>
</html>