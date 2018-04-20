<!DOCTYPE html>
<html>
   <title>W3.CSS</title>
   <%@ page language="java" contentType="text/html; charset=EUC-KR"
       pageEncoding="EUC-KR"%>
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
   <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/orgTree-view.css">
<body>

<div class="w3-main">

<script type="text/javascript">
function GenerateID() {
   // 사원 row에 id를 부여합니다.
   // 모달에 사원 정보를 넘길 때, 사용합니다.
   console.log("GenerateID");
   var rows = document.getElementById("emp_rows");
   var children = rows.getElementsByTagName("TR");
   var idname= "emp_";
   
   for(i = 0; i < children.length; i++) {
      var rowCount = i + 1;
      children[i].setAttribute("id", idname + rowCount);
   }
}

function PopupEmpInfo(clicked_element) {

   // 사원 정보를 순서대로 모달에 적용합니다.
   // 게시판의 정보 순서를 모달에 그대로 적용하기 때문에 순서에 주의합니다.
   var row_td = clicked_element.getElementsByTagName("td");
   var modal = document.getElementById("modal_emp_info");
   
   document.getElementById("emp_info_emnum").innerHTML = row_td[0].innerHTML;
   
   console.log(row_td[1].innerText);
   
   if(row_td[1].innerHTML != "")
	   document.getElementById("emp_info_profile").src = "${pageContext.servletContext.contextPath}/fileSave/" + row_td[1].innerHTML;
	else
		document.getElementById("emp_info_profile").src = "${pageContext.servletContext.contextPath}/resources/images/mypic.gif";
   
   document.getElementById("emp_info_dnum").innerHTML = row_td[2].innerHTML;
   document.getElementById("emp_info_tnum").innerHTML = row_td[3].innerHTML;
   document.getElementById("emp_info_name").innerHTML = row_td[4].innerHTML;
   document.getElementById("emp_info_position").innerHTML = row_td[5].innerHTML;
   document.getElementById("emp_info_tel").innerHTML = row_td[6].innerHTML;
   document.getElementById("emp_info_email").innerHTML = row_td[7].innerHTML;
   
   modal.style.display = 'block';
   
   if(IsAdmin() == true ) {
      ApplyForAdmin();
   }
}

function IsAdmin() {
   var session = document.getElementById("session_getter");
   var id = session.value;
   
   return id == "admin" ? true : false;
}

function ApplyForAdmin() {
   /* 관리자 전용 버튼을 활성화 합니다. */
   document.getElementById("modifyForAdmin").style.visibility = "visible";
   document.getElementById("deleteForAdmin").style.visibility = "visible";
   
   document.getElementById("emp_info_emnum").readOnly = false;
   document.getElementById("emp_info_profile").readOnly = false;
   document.getElementById("emp_info_dnum").readOnly = false;
   document.getElementById("emp_info_tnum").readOnly = false;
   document.getElementById("emp_info_name").readOnly = false;
   document.getElementById("emp_info_position").readOnly = false;
   document.getElementById("emp_info_tel").readOnly = false;
   document.getElementById("emp_info_email").readOnly = false;
}
function mem_search(frm){
	//회원검색기능
	var frm = document.mem_search;
	
	frm.submit();
}

function deleteArticle() {
	document.getElementById('confirmModal').style.display='none';
	document.getElementById('modal_emp_info').style.display='none';
	location.href="deleteEmp?emnum=" + document.getElementById('emp_info_emnum').innerHTML;
	console.log("deleteEmp?emnum=" + document.getElementById('emp_info_emnum').innerHTML);
}

function updateArticle(){
	location.href="updateEmp?emnum=" + document.getElementById('emp_info_emnum').innerHTML;
}

</script>

<!-- session 정보 전용입니다. -->
<input id="session_getter" type="hidden" name="pONumb" value="${sessionScope.id}" />

<div class="w3-padding-16"></div>

 <div class="w3-container">
<h2 style="text-align: center;">총 직원</h2>
<table class="w3-table-all w3-hoverable" style="text-align: center;">
   <!-- <col width="10%">   사번 -->
   <col width="15%">   <!-- 부서 -->
   <col width="15%">   <!-- 팀 -->
   <col width="10%">   <!-- 이름 -->
   <col width="10%">   <!-- 직위 -->
   <!-- <col width="20%">   사내번호 -->
   <col width="20%">   <!-- 이메일 -->
   <thead>
      <tr class="w3-yellow">
<!--           <th>사번</th>emnum
          <th>사진</th>emnum  -->
        <th>부서</th>  <!-- dnum -->
        <th>팀</th>  <!-- dnum -->
       <th>이름</th><!-- name -->
       <th>직위</th><!-- position -->
       <!-- <th>사내번호</th>tel -->
       <th>이메일</th><!-- email -->
      </tr>
   </thead>
   
<tbody id="emp_rows">
   <c:forEach var="li" items="${articleList}">
      <tr onclick="PopupEmpInfo(this)">
      	 <td style="display:none">${li.emnum}</td><!-- 사번 -->
      	 <td style="display:none">${li.profile}</td><!-- 프로필 -->
         <td>${li.dname}</td><!-- 부서 -->
         <td>${li.tname}</td><!-- 팀 -->
         <td>${li.name}</td><!-- 이름 -->
         <td>${li.position}</td><!-- 직위 -->
         <td style="display:none">${li.tel}</td><!-- 사내번호 -->
         <%-- <td style="display:none">${li.phone}</td><!-- 핸드폰 --> --%>
         <td>${li.email}</td><!-- 이메일 -->
      </tr>
   </c:forEach>
</tbody>

<!-- <script type="text/javascript">
GenerateID()
</script> -->
          
</table>
</div>

<!-- 하단 페이지 -->
<div class="w3-center" style="margin-top: 20px; text-align: center;">
<c:if test="${count>0}">
   <c:if test="${startPage > bottomLine }">
      <a href="insa?pageNum=${startPage - bottomLine}">[이전]</a> 
   </c:if>
   
   <c:forEach var="i" begin="${startPage}" end="${endPage}">   
      <a href="insa?pageNum=${i}">
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
<form name ="mem_search" method="post" style="text-align: center;">
   <select name="keyField" style="height: 30px;">
      <option value="">선택</option>
      <option value="dname">부서</option>
      <option value="tname">팀</option>
      <option value="name">이름</option>
   </select>
   <input type="text" size="20" name="keyWord">
   <input type="submit" value="검색" onclick="mem_search(form)" />&nbsp;
</form>
 

<!-- 사원 정보 보기 모달 -->
<div class="w3-container">
   <div id="modal_emp_info" class="w3-modal">
      <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">
         <div class="w3-center"><br>
                  <span onclick="document.getElementById('modal_emp_info').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
         </div>

<div class="w3-container w3-text-black w3-margin">
   <h2 class="w3-center" style="color: black"><strong>사원 정보</strong></h2>

   <div class="w3-container w3-border w3-border-black">
      
       <!-- 프로필 사진-->
      <div class="w3-section">
         <div style="text-align:center;">
         	<!-- 등록된 이미지가 없는 경우에는 그냥 이걸로 보여줍니다. -->
			<img id="emp_info_profile" src="${pageContext.servletContext.contextPath}/resources/images/mypic.gif" height="300" width="300">
		</div>
      </div>
      
  <div style="margin-left: 10px">
  <div class="w3-row-padding">
         <div class="w3-quarter">
            <label style="font-weight: bold">사원 번호</label>
            <p class="w3-input w3-border" style="height: 50px" id="emp_info_emnum" readonly >
         </div>
         <div class="w3-half">
            <label>이름</label>
            <p class="w3-input w3-border" style="height: 50px" id="emp_info_name" readonly>
         </div>
         <div class="w3-quarter">
            <label>직위</label>
            <p class="w3-input w3-border" style="height: 50px" id="emp_info_position"  readonly>
         </div> 
      </div>
  
   <div class="w3-row-padding">
         <div class="w3-half">
            <label style="font-weight: bold">부서</label>
            <p class="w3-input w3-border" style="height: 50px" id="emp_info_dnum" readonly >
         </div>
         <div class="w3-half">
            <label>팀</label>
            <p class="w3-input w3-border" style="height: 50px" id="emp_info_tnum" readonly>
         </div>
      </div>
      
    <div class="w3-row-padding">
         <div class="w3-half">
            <label style="font-weight: bold">사내 번호</label>
            <p class="w3-input w3-border" style="height: 50px" id="emp_info_tel" readonly >
         </div>
         <div class="w3-half">
            <label>이메일</label>
            <p class="w3-input w3-border" style="height: 50px" id="emp_info_email" readonly>
         </div>
        <!--  <div class="w3-quarter">
            <label>부서</label>
            <p class="w3-input w3-border w3-border-black" style="height: 50px"d id="emp_info_dnum"  readonly>
         </div> -->
      </div>

   </div>
   </div>
   <br>
    <div class="w3-center">
      <div class="w3-bar">
     <button type= "button" class="w3-button w3-section w3-blue" onclick="document.getElementById('modal_emp_info').style.display='none'"> 확인 </button>
     <c:if test="${id eq 'admin'}">
  	
      <!-- 관리자인 경우에는 수정과 삭제가 가능합니다. -->
         
         <!-- 사용자 정보 수정 -->
         <button id="modifyForAdmin" type="button" class="w3-button w3-section w3-pink" style="visibility:visible" 
         <%-- onclick="location.href='${pageContext.request.contextPath}/member/updateEmp'"> 수정 </button> --%>
         onclick="updateArticle()"> 수정 </button>
         
         <!-- 사용자 정보 삭제 -->
        <!-- <button type= "button" id="deleteForAdmin" class="w3-button w3-section w3-red" style="visibility:visible" onclick="location.href='${pageContext.request.contextPath}/member/deleteEmp?emnum=${emp_info_emnum}'"> 삭제 </button> -->
       <button type= "button" id="deleteForAdmin" class="w3-button w3-section w3-red" style="visibility:visible" 
        onclick="document.getElementById('confirmModal').style.display='block'"> 삭제 </button>
      </c:if>
      </div>
   </div>

</div>

<!-- modal div -->
	<div id="confirmModal" class="w3-modal w3-animate-opacity">
		<div class="w3-panel w3-modal-content w3-card-4 w3-light-grey" style="width:50%; min-width:300px; max-width:500px;">
			<div class="w3-panel w3-center">
				직원 정보를 삭제하시겠습니까?
			</div>
			<div class="w3-bar w3-center w3-padding">
				<button class="w3-button w3-teal" onclick="document.getElementById('confirmModal').style.display='none'">No</button>
				<button class="w3-button w3-red" onclick="deleteArticle()">Yes</button>
			</div>
		</div>
		
	</div> 

      </div>
   </div>
</div>

</div>
   
</body>
</html>