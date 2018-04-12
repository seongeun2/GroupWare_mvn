<!DOCTYPE html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<html>
 <script src="${pageContext.servletContext.contextPath}/resources/js/app.js"></script>
	<title>W3.CSS</title>
	<%@ page language="java" contentType="text/html; charset=EUC-KR"
	    pageEncoding="EUC-KR"%>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/orgTree-view.css">
<style>
.th .td {text-align: center;}
</style>
<body>
 
 <div class="w3-container" style="margin: 40px 100px;">
<h2 style="text-align: center;">총 직원</h2>
<table class="w3-table-all w3-hoverable" style="text-align: center;">
	<col width="10%">	<!-- 사번 -->
	<col width="10%">	<!-- 부서 -->
	<col width="10%">	<!-- 팀 -->
	<col width="10%">	<!-- 이름 -->
	<col width="10%">	<!-- 직위 -->
	<col width="20%">	<!-- 사내번호 -->
	<col width="20%">	<!-- 이메일 -->
	<col width="10%">	<!-- 결재 -->
   <thead>
      <tr class="w3-yellow">
      	 <th>사번</th><!-- emnum  -->
    	 <th>부서</th>  <!-- dnum -->
    	 <th>팀</th>  <!-- dnum -->
		 <th>이름</th><!-- name -->
		 <th>직위</th><!-- position -->
		 <th>사내번호</th><!-- tel -->
		 <th>이메일</th><!-- email -->
		 <th>결재</th><!-- V -->
      </tr>
   </thead>
   <c:forEach var="li" items="${articleList}">
       <tr>
         <td>${li.emnum}</td><!-- 사번 -->
         <td>${li.dname}</td><!-- 부서 -->
         <td>${li.tname}</td><!-- 팀 -->
         <td><a href="#" onclick="document.getElementById('id01').style.display='block'">${li.name}</a></td><!-- 이름 -->
         <td>${li.position}</td><!-- 직위 -->
         <td>${li.tel}</td><!-- 사내번호 -->
         <td>${li.email}</td><!-- 이메일 -->
         <td><center><input class="w3-check" type="checkbox" onclick="check('${li.name}','${li.id}','${app}')"></center></td>
       </tr>
   </c:forEach>       
</table>
</div>

<!-- 하단 페이지 -->
<div class="w3-center" style="margin-top: 20px; text-align: center;">
<c:if test="${count>0}">
   <c:if test="${startPage > bottomLine }">
      <a href="insa?pageNum=${startPage - bottomLine}">[이전]</a> 
   </c:if>
   
   <c:forEach var="i" begin="${startPage}" end="${endPage}">   
      <a href="insa?pageNum=${i}&app=${app}">
   <c:if test="${i !=  currentPage}">[${i}]</c:if>
   <c:if test="${i ==  currentPage}">
      <font color='red'>[${i}]</font></c:if></a>
   </c:forEach>
   
   <c:if test="${endPage < pageCount}">
      <a href="insa?pageNum=${startPage+bottomLine}">[다음]</a>
   </c:if>   
</c:if>
</div><br>

<!-- 회원 검색 -->
<form name ="search" method="post" style="text-align: center;">
   <select name="keyField" style="height: 30px;">
      <option>선택</option>
      <option value="">부서</option>
      <option value="m_id">팀</option>
      <option value="m_name">이름</option>
   </select>
   <input type="text" size="20" name="keyWord">
   <input type="button" value="검색" onclick="mem_search(form)" />&nbsp;
</form>
 

		<!-- 사원 정보 보기 모달 -->
		<div class="w3-container">
		
			<div id="id01" class="w3-modal">
				<div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">
					<div class="w3-center"><br>
		  				<span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
		     		</div>
		      
					<div class="w3-container w3-text-blue w3-margin">
						<h2 class="w3-center"> 상세 보기</h2>
		
						<div class="w3-row w3-section">
				  			<div class="w3-col" style="width:50px">
				  				<i class="w3-xxlarge fa fa-user"></i>
				  			</div>
		   					 <div class="w3-rest">
		     					 <input class="w3-input w3-border" name="first" type="text" placeholder="${name}" readonly="readonly">
		   					 </div>
						</div>
		
						<div class="w3-row w3-section">
						  <div class="w3-col" style="width:50px">
						 	 <i class="w3-xxlarge fa fa-bookmark"></i>
						  </div>
						  <div class="w3-rest">
						      <input class="w3-input w3-border" name="last" type="text" placeholder="사원" readonly="readonly">
						  </div>
						</div>
		
						<div class="w3-row w3-section">
						  <div class="w3-col" style="width:50px">
						  	<i class="w3-xxlarge fa fa-group"></i>
						  </div>
						  <div class="w3-rest">
						  	<input class="w3-input w3-border" name="last" type="text" placeholder="인사팀" readonly="readonly">
						  </div>
						</div>
		
						<div class="w3-row w3-section">
						  <div class="w3-col" style="width:50px">
						  	<i class="w3-xxlarge fa fa-phone"></i>
						  </div>
						    <div class="w3-rest">
						      <input class="w3-input w3-border" name="phone" type="text" placeholder="02)2601-7551" readonly="readonly">
						    </div>
						</div>
		
						<div class="w3-row w3-section">
						  <div class="w3-col" style="width:50px">
						  	<i class="w3-xxlarge fa fa-tablet"></i>
						  </div>
						  <div class="w3-rest">
						    <input class="w3-input w3-border" name="phone" type="text" placeholder="010-5124-0316" readonly="readonly">
						  </div>
						</div>
		
						<div class="w3-row w3-section">
						  <div class="w3-col" style="width:50px">
						  	<i class="w3-xxlarge fa fa-envelope-o"></i>
						  </div>
						  <div class="w3-rest">
						    <input class="w3-input w3-border" name="email" type="text" placeholder="hee@gmail.com" readonly="readonly">
						  </div>
						</div>
		
						<div class="w3-row w3-section">
						  <div class="w3-col" style="width:50px">
						  	<i class="w3-xxlarge fa fa-commenting"></i>
						  </div>
						  <div class="w3-rest">
						    <input class="w3-input w3-border" name="message" type="text" placeholder="쪽지보내기" readonly="readonly">
						  </div>
						</div>
		
						<p class="w3-center">
							<button class="w3-button w3-section w3-blue w3-ripple" onclick="document.getElementById('id01').style.display='none'"> 확인 </button>
						</p>
					</div>
		  		  </div>
		 	 </div>
		</div>
</body>
</html>