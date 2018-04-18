<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<div class="listNotice" id="received">
		<h3>받은쪽지함</h3>
			<c:if test="${count==0 }">
				<table class="table-bordered" width="700">
				<tr class="w3-grey">
				<td align="center">받은 쪽지가 없습니다.</td>
				</table>
			</c:if>
			
			<c:if test="${count!=0 }">
				<table class="w3-table-all w3-hoverable">
					<thead>
		      			<tr class="w3-blue">
		      				<!-- <th>삭제</th> -->
		       				<th>번호</th>
		        			<th>제목</th>
		       				<th>보낸사람</th>
		       				<th>받은날짜</th>
		      			</tr>
		    		</thead>
					
		    		<c:forEach var="notice" items="${toList}">
						<a href="pageNum=${currentPage}"></a> 
						<tr height="30">
							<!-- <td align="center" width="20"><input type="checkbox"></td> -->
							<td align="center" width="20">${notice.nid}</td>
							<td align="center" width="50" onclick="window.location.href='${pageContext.request.contextPath}/notice/detailNotice?nid=${notice.nid}'">
							${notice.title}</td>
							<td align="center" width="30">${notice.fromid}</td>
							<td align="center" width="20">${notice.indate}</td>
						</tr>
					</c:forEach>
	  			</table>
	  		</c:if>
	  		<!-- 페이지 표시 -->
			<div class="w3-center">
				<c:if test="${count>0 }">
					<c:if test="${startPage>bottomLine }">
					<a href="receivedNotice?pageNum=${startPage-bottomLine}">[이전]</a>
					</c:if>
					<c:forEach var="i" begin="${startPage }" end="${endPage}">
					<a href="receivedNotice?pageNum=${i }"> 
						<c:if test="${i!=currentPage }">[${i}]</c:if>
						<c:if test="${i==currentPage }">[${i}]
						<font color='red'></font></c:if>
		 			</a>
					</c:forEach>
					<c:if test="${endPage<pageCount }">
						<a href="receivedNotice=${startPage+bottomLine}">[다음]</a>
					</c:if>
				</c:if>
			</div>
	</div>
	<br/><hr/>
	<%-- <input type="button" class="btn" value="삭제" onclick="window.location.href='${pageContext.request.contextPath}/notice/deleteNotice'"> --%>
	<input type="button" class="btn" value="쪽지쓰기" onclick="window.location.href='${pageContext.request.contextPath}/notice/writeNotice'"></a>
	<input type="button" class="btn" value="메인메뉴" onclick="window.location.href='${pageContext.request.contextPath}/main'"></a>
</div>

</body>
</html>