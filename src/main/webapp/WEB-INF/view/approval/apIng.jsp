<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script>
function search2(frm){
	//회원검색기능
	var frm = document.search2;
	
	frm.submit();
}
</script>
<div class="w3-container" style="margin: 40px 100px;">
<h2 style="text-align: center;">결재 진행중  ${count}건</h2>
<table class="w3-table-all w3-hoverable" style="text-align: center;">
	<col width="10%">	<!-- 문서번호 -->
	<col width="10%">	<!-- 작성자 -->
	<col width="12%">	<!-- 부서 -->
	<col width="12%">	<!-- 팀명 -->
	<col width="21%">	<!-- 제목 -->
	<col width="15%">	<!-- 등록일시 -->
	<col width="10%">	<!-- 문서양식 -->
	<col width="10%">	<!-- 진행상태 -->
	<thead>
		<tr class="w3-teal">
			<th>문서번호</th>
			<th>작성자</th>
	        <th>부서</th>
	        <th>팀명</th>
	        <th>제목</th>
	        <th>등록일시</th>
	        <th>문서양식</th>
	        <th>진행상태</th>  
		</tr>
	</thead>
	
	<c:if test="${count == 0 }">
	<table class="w3-table-all w3-hoverable" width="100%">
		<tr class="w3-white">
			<td style="text-align:center">결재 진행중인 문서가 없습니다.</td>
	</table>
	</c:if>
	
	
	<c:if test="${count !=0 }">
		<c:forEach var="ap" items="${ap}">
		    <tr>
		      <td>${ap.docNo}</td><!-- 문서번호 -->
		      <td>${ap.name}</td><!-- 이름(작성자) -->
		      <td>${ap.deptName}</td><!-- 부서 -->
		      <td>${ap.teamName}</td><!-- 팀명 -->
		      <td><a href="apView?docNum=${ap.docNo}&pageNum=${currentPage}">${ap.title}</a></td><!-- 제목 -->
		      <td>${ap.inDt}</td><!-- 등록일시 -->
		      <td>${ap.typegubun}</td><!-- 문서양식 -->
		      <td>${ap.status}</td><!-- 진행상태 -->
		    </tr>
		</c:forEach>
	</c:if>    
</table>
</div>

<!-- 하단 페이지 -->
<div class="w3-center" style="margin-top: 20px; text-align: center;">
<c:if test="${count>0}">
	<c:if test="${startPage > bottomLine }">
		<a href="apIng?pageNum=${startPage - bottomLine}">[이전]</a> 
	</c:if>
   
	<c:forEach var="i" begin="${startPage}" end="${endPage}">   
		<a href="apIng?pageNum=${i}">
	<c:if test="${i !=  currentPage}">[${i}]</c:if>
	<c:if test="${i ==  currentPage}">
		<font color='red'>[${i}]</font></c:if></a>
	</c:forEach>
   
	<c:if test="${endPage < pageCount}">
		<a href="apIng?pageNum=${startPage+bottomLine}">[다음]</a>
	</c:if>   
</c:if>
</div><br>

<!-- 문서 검색 -->
<form name ="search2" method="post" style="text-align: center;">
	<select name="keyField" style="height: 30px;">
		<option value="">선택</option>
		<option value="title">제목</option>
		<option value="name">이름</option>
		<option value="typegubun">문서양식</option>
	</select>
	<input type="text" size="20" name="keyWord">
	<input type="button" value="검색" onclick="search2(form)" />&nbsp;
</form>

</html>