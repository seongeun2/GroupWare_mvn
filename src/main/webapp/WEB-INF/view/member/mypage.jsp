<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
		<script src="${pageContext.servletContext.contextPath}/resources/js/admin.js"></script>
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	</head>
<body>

<script>
function myFunction() {
    document.getElementById("myDate").value = "${article.joind}";
}

function positionCheck() {
    document.getElementById("position_" + "${article.position}").checked = true;
}


function tnumCheck() {
    document.getElementById("tnum_" + "${article.tnum}").selected = true;
}

$(document).ready(function () {
	positionCheck();
	tnumCheck();
	/* var radiocheck = $("input[type=radio][name=position]").val();	
	$("input:radio[name=position][value="+radiocheck+"]").prop('checked', true);
	 */
	
	
	var date = new Date();
     /* var currentMonth = date.getMonth();
     var currentDate = date.getDate();
     var currentYear = date.getFullYear(); */

     $('#myDate').datepicker({
         /* minDate: new Date(currentYear, currentMonth, currentDate), */
         dateFormat: 'yy-mm-dd'
     });
     
    /*  $("#dnum").val("${dnum}").prop("selected", true); //값이 1인 option 선택
     //value="${dnum}" */
     
      //비밀번호 확인
	   $('#pw2').blur(function(){
	      if($('#pw').val() != $('#pw2').val()){
	    	  if($('#pw2').val()!=''){
		    	  alert("비밀번호가 일치하지 않습니다.");
	    		  $('#pw2').val('');
	              $('#pw2').focus();
	    	  }
	      }
	   })
});

</script>
	<div class="w3-container w3-margin">
	  	<h1 align="center">마이 페이지</h1>
	</div>
	<div class="w3-container w3-content w3-margin-top">	
		<form class="w3-container w3-card-4" action="/GroupWare/member/updateEmpPro" enctype="multipart/form-data" method="post">
		 	 <input  type="hidden"   name="emnum" value="${article.emnum}">  
			<p>
				<label>*이름</label>
				<input class="w3-input" type="text" style="width:90%" name="name" value="${article.name}" required>
			</p>
			
			<p>
				<label>*아이디</label>
				<input class="w3-input" type="text" style="width:90%" name="id" value="${article.id}" readonly="readonly">
			</p>
			
			 
			<p>
				 <label>*비밀번호</label> 
				<input class="w3-input" type="password" style="width:90%" name="pw"  id="pw" value="${article.pw}" required>
			</p>
			
			<p>
			<label>*비밀번호 확인</label>
				<input class="w3-input" type="password" style="width:90%" id="pw2" required>
			</p> 
			
			<!-- <p>
				<label>*부서</label>
				<select class="w3-select" name="option" id="option" onchange="doChange(this,'tnum')" id="dnum" required>
					<option value="" disabled selected>부서를 선택하세요.</option>
					<option value="200">경영지원부서</option>
					<option value="300">개발부서</option>
					<option value="400">디자인부서</option>
			 	</select>
			</p> -->
			
		
				
		
			<div class="selectPosition">
				<!-- <p><label>*직위</label></p> -->
				<input id="position_1" class="w3-radio" type="radio" name="position" value="1" style="display:none">
				
				<input id="position_2" class="w3-radio" type="radio" name="position" value="2" style="display:none">
				
				<input id="position_3" class="w3-radio" type="radio" name="position" value="3" style="display:none">
				<!-- <label for="position_3">팀장</label> -->
				
				<input id="position_4" class="w3-radio" type="radio" name="position" value="4" style="display:none">
				<!-- <label for="position_4">대리</label> -->
				
				<input id="position_5" class="w3-radio" type="radio" name="position" value="5" style="display:none">
				<!-- <label for="position_5">사원</label> -->
			</div>
			

			<p>
				 <!-- <label>*입사일</label>  -->
				<input class="w3-input w3-padding-16 w3-border" type="hidden" name="joind" id="myDate" value="${article.joind}" required>
			</p>
			
			<p>
				<label>*이메일</label>
				<input class="w3-input" type="text" style="width:90%" name="email" value="${article.email}">
			</p>
			
			<p>
				<label>*핸드폰 번호</label>
				<input class="w3-input" type="text" style="width:90%" name="phone" value="${article.phone}">
			</p>
			
			<p>
				<label>*사내 번호</label>
				<input class="w3-input" type="text" style="width:90%" name="tel" value="${article.tel}">
			</p>
		
		<!-- <label>*팀</label> -->
				<select class="w3-select" name="tnum" id="tnum" style="visibility: hidden" required>
				 <option id="tnum_100" value="100" style="display:none">대표</option>
				 <option id="tnum_201" value="201" style="display:none">인사팀</option>
				 <option id="tnum_202" value="202" style="display:none">회계팀</option>
				 <option id="tnum_203" value="203" style="display:none">고객관리팀</option>
				 <option id="tnum_301" value="301" style="display:none">개발1팀</option>
				 <option id="tnum_302" value="302" style="display:none">개발2팀</option>
				 <option id="tnum_401" value="401" style="display:none">디자인1팀</option>
				 <option id="tnum_402" value="402" style="display:none">디자인2팀</option>
					
				</select>
		
			 <tr>
  				<td width="70" align="center">*서명</td>
				<td width="330">
				<%-- <img src="/GroupWare/fileSave/${article.signature}" style="height:300px; width: 300px;"></td> --%>
  				<input type="file" size="40" maxlength="30" name="uploadfile" value="${article.signature}"/> 
		 		</td>
		    </tr>
		    <input type="hidden" name="signature" value="${article.signature}"/>
		    
		   
		    <tr>
  				<td width="70" align="center">*프로필사진</td>
  				<td width="330">
  				<%-- <img src="/GroupWare/fileSave/${article.profile}" style="height:300px; width: 300px;"> --%>
  				<input type="file" size="40" maxlength="30" name="profileimage"></td>
  				</tr> 
  				</td>
		    </tr>
  				<input type="hidden" name="profile" value="${article.profile}"/>
  				
			
			<div align="center">
				<p>
					<%-- <button type="button" class="w3-button w3-black w3-margin-bottom w3-hover-teal" onclick="location.href = '${pageContext.request.contextPath}/main'" align="center"> 메인</button> --%>
			
				
				
					<button type="submit" class="w3-button w3-black w3-margin-bottom w3-hover-teal" align="center">
	     			<i class="fa fa-paper-plane w3-margin-right"></i>수정</button>
				
					<!-- <button onClick="window.location.reload()" class="w3-button w3-black w3-margin-bottom w3-hover-teal" align="center"> 취소</button> -->
				</p>
			</div>	
		</form>
	</div>

</body>
</html> 