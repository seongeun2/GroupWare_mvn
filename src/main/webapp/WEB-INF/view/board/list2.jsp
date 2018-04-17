<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ftm" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<title>공지게시판</title>

<!-- 공지게시판 boardId 2번 -->


<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<div class="w3-main">


<body>
<div class="w3-main">
<div class="w3-container">
  <h2 style="text-align: center;">공지게시판 : ${boardid} 번 (전체 글:${count})</h2>
  
 
<!-- admin 계정만 글 쓸 수 있게 하는 것 -->
  <c:if test="${id eq 'admin'}">
	<p class="w3-right w3-padding-right-large">
<!-- 수정 : writeFormUpload2 -->
<!-- 수정 : ${boardid } -->
		<a href="writeFormUpload${boardid}">글쓰기</a>	<!-- writeForm -->
	</p>
  </c:if>

	<c:if test="${count==0 }">
		<table class="w3-table-all w3-hoverable"  width="700">
			<tr class="w3-teal">
				<td align="center">게시판에 저장된 글이 없습니다.</td>
			</tr>
		</table>
	</c:if>


	<c:if test="${count!=0 }">

	<table class="w3-table-all w3-hoverable"  width="700">
    	<thead>
      	<tr class="w3-cyan">
      		<td align="center" width="50">번호</td>
			<td align="center" width="250">제 목</td>
			<td align="center" width="100">작성자</td>
			<td align="center" width="150">작성일</td>
			<td align="center" width="50">조 회</td>
			<td align="center" width="100">IP</td>
		</tr>
    	</thead>
    
    
    <c:forEach  var="article"  items="${articleList}">	
		<tr height="30">
			<td align="center" width="50">${number}</td>
			<c:set var="number" value="${number-1}"/>
			<td width="250">
	
			<c:if test="${article.re_level>0}">
				<img src="${pageContext.request.contextPath}/resources/images/hyo-board-img/level.gif"
					width="${5 * article.re_level}" height="16"> 
				<img src="${pageContext.request.contextPath}/resources/images/hyo-board-img/re.gif">
			</c:if> 
	
			<c:if test="${article.re_level==0}">
	 			<img src="${pageContext.request.contextPath}/resources/images/hyo-board-img/level.gif"  height="16">
			</c:if>
			
<!-- 수정 : ${boardid } -->
		 		<a href="content?num=${article.num}&pageNum=${currentPage}&boardid=${boardid}">
					${article.subject}</a> 

 			<c:if test="article.readcount>=20">
 				<img src="${pageContext.request.contextPath}/resources/images/hyo-board-img/hot.gif" border="0" height="16">
			</c:if>
 			</td>
			<td align="center" width="100">${article.writer}</td>
			<td align="center" width="150">
				<ftm:formatDate value="${article.reg_date}" pattern="yyyy-MM-dd"/>
			</td>
			<td align="center" width="50">${article.readcount}</td>
			<td align="center" width="100">${article.ip}</td>
		</tr>	
	</c:forEach>
  </table>
  </c:if>
</div>


<!-- 하단 페이지 -->
   <div class="w3-center" style="margin-top: 20px; text-align: center;">
   <c:if test="${count>0}">
   <c:if test="${startPage > bottomLine }">
      <a href="list${boardid}?pageNum=${startPage - bottomLine}">[이전]</a> 
   </c:if>
   
   <c:forEach var="i" begin="${startPage}" end="${endPage}">   
   <a href="list${boardid}?pageNum=${i}">
   <c:if test="${i !=  currentPage}">[${i}]</c:if>
   <c:if test="${i ==  currentPage}">
   <font color='red'>[${i}]</font></c:if></a>
   </c:forEach>
   
   <c:if test="${endPage < pageCount}">
      <a href="list${boardid}?pageNum=${startPage+bottomLine}">[다음]</a>
   </c:if>   
   </c:if>
   </div><br>
   
   
   
<!-- 회원 검색 -->
   <form name ="search" method="post" style="text-align: center;">
      <select name="keyField" style="height: 30px;">
      <option>선택</option>
      <option value="m_id">보낸사람</option>
      <option value="m_name">내용</option>
      </select>
      <input type="text" size="20" name="keyWord">
      <input type="button" value="검색" onclick="mem_search(form)" />&nbsp;
   </form>
 </div>
 
 </div>
</body>
</html> 