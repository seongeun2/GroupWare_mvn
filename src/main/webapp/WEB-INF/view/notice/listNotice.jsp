<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>

<style>
		.btn { 
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
		.btn:hover {
		  background: #3cb0fd;
		  background-image: -webkit-linear-gradient(top, #3cb0fd, #3498db);
		  background-image: -moz-linear-gradient(top, #3cb0fd, #3498db);
		  background-image: -ms-linear-gradient(top, #3cb0fd, #3498db);
		  background-image: -o-linear-gradient(top, #3cb0fd, #3498db);
		  background-image: linear-gradient(to bottom, #3cb0fd, #3498db);
		  text-decoration: none;
		}
</style>
<body>

<!-- Sidebar -->
<div class="w3-sidebar w3-bar-block w3-card" style="width:15%;right:0;">
  <h3 class="w3-bar-item">사원목록</h3>
  <a href="#">&nbsp;&nbsp;&nbsp;사원번호1 &nbsp;<img src="${pageContext.request.contextPath}/resources/images/notice/online.png" width="20px" height="20px"></a><br/>
  <a href="#">&nbsp;&nbsp;&nbsp;사원번호2 &nbsp;<img src="${pageContext.request.contextPath}/resources/images/notice/offline.png" width="20px" height="20px"></a><br/>
  <a href="#">&nbsp;&nbsp;&nbsp;사원번호3 &nbsp;<img src="${pageContext.request.contextPath}/resources/images/notice/online.png" width="20px" height="20px"></a><br/>
  <a href="#">&nbsp;&nbsp;&nbsp;사원번호4 &nbsp;<img src="${pageContext.request.contextPath}/resources/images/notice/offline.png" width="20px" height="20px"></a><br/>
</div>

<div class="container"><br/>
	<ul class="nav nav-tabs">
		<li class="active"><a data-toggle="tab" href="#received">받은쪽지</a></li>
		<li><a data-toggle="tab" href="#sent">보낸쪽지</a></li>
	</ul>

	<div class="tab-content">
		<div id="received" class="tab-pane fade in active">
			<h3>받은쪽지함</h3>
			<table class="w3-table-all w3-hoverable">
				<thead>
	      			<tr class="w3-blue">
	      				<th>삭제</th>
	       				<th>번호</th>
	        			<th>제목</th>
	       				<th>보낸사람</th>
	       				<th>보낸날짜</th>
	      			</tr>
	    		</thead>
	    		<tr>
	    			<td><input type="checkbox"></td>
	      			<td>1</td>
	      			<td>제목1</td>
	      			<td>보낸사람1</td>
	      			<td>보낸날짜1</td>
	    		</tr>
	    		<tr><td><input type="checkbox"></td><td>2</td><td>제목2<td>보낸사람2</td><td>보낸날짜2</td></tr>
  			</table>
		</div>

		<div id="sent" class="tab-pane fade">
			<h3>보낸쪽지함</h3>
			<table class="w3-table-all">
				<thead>
	      			<tr class="w3-light-green">
	       				<th>First Name</th>
	        			<th>Last Name</th>
	       				<th>Points</th>
	      			</tr>
	    		</thead>
	    		<tr><td>Jill</td><td>Smith</td><td>50</td></tr>
	    		<tr><td>Eve</td><td>Jackson</td><td>94</td></tr>
  			</table>
		</div>
	</div>
	<br/><hr/>
	<input type="button" class="btn" value="삭제" onclick="window.location.href='${pageContext.request.contextPath}/notice/deleteNotice'">
	<input type="button" class="btn" value="쪽지쓰기" onclick="window.location.href='${pageContext.request.contextPath}/notice/writeNotice'"></a>
	<input type="button" class="btn" value="메인메뉴" onclick="window.location.href='${pageContext.request.contextPath}/main'"></a>
</div>

</body>
</html>