<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<script src="${pageContext.servletContext.contextPath}/resources/js/app.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/font.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  //달력
  $(document).ready(function () {
       var date = new Date();
       var currentMonth = date.getMonth();
       var currentDate = date.getDate();
       var currentYear = date.getFullYear();

       $('#startDt').datepicker({
           minDate: new Date(currentYear, currentMonth, currentDate),
           dateFormat: 'yy-mm-dd'
       });
       $('#ednDt').datepicker({
           minDate: new Date(currentYear, currentMonth, currentDate),
           dateFormat: 'yy-mm-dd'
   });
  });
  </script>
  
<div class="w3-main">

  <!-- Contact Section -->
<div class="w3-row-padding w3-center w3-padding-24">
   <div class="w3-third main_color_theme w3-button w3-hover-teal" onclick="location.href='/GroupWare/approval/type1'">
      <p><i class="fa fa-envelope w3-xxlarge w3-text-light-grey"></i></p>
      <p>기안서</p>
   </div>
   <div class="w3-third main_color_theme w3-button w3-hover-teal" onclick="location.href='/GroupWare/approval/type2'">
      <p><i class="fa fa-map-marker w3-xxlarge w3-text-light-grey"></i></p>
      <p>휴가신청서</p>
   </div>
   <div class="w3-third main_color_theme w3-button w3-hover-teal" onclick="location.href='/GroupWare/approval/type3'">
      <p><i class="fa fa-phone w3-xxlarge w3-text-light-grey"></i></p>
      <p>지출결의서</p>
   </div>
</div>
   
<div id="approval_border" class="w3-padding-32" style="margin: 10px; border: 1px solid #000!important; ">
<form action="apWrite" method="post" style="font-family: F4;">
<input type="hidden" name="typegubun" value="doc02">
<input type="hidden" id="id2" name="id2" value="${id2}">
<input type="hidden" id="id3" name="id3" value="${id3}">
<input type="hidden" id="name2" name="name2" value="${name2}">
<input type="hidden" id="name3" name="name3" value="${name3}">

<div id="approval_inner_margin">
      <div class="w3-row w3-padding approval_color_theme"  style="margin-left: 15%; margin-right: 15%;">
         <div class="w3-padding-16"></div>
         
      <div class="w3-col" style="width: 55%;"><p class="w3-xxxlarge" style="text-align:center;">휴가신청서</p></div>
      
     <!-- 1번 결재 -->
      <div class="w3-col" style="width: 15%; background-color: white; font-weight: bold"">
         <div class="w3-container w3-center w3-border w3-border-black">
            <p id="name" name="name">${vo.name}</p>
         </div>
         <div class="w3-container w3-center w3-border w3-border-black">
            <img src="${pageContext.servletContext.contextPath}/resources/images/stamp/no.JPG" 
                   style="width: 100px; height: 100px" alt="Avatar">
           </div>
         </div>
         <!-- 2번 결재 -->
      <div class="w3-col" style="width: 15%; background-color: white; font-weight: bold"">
         <div class="w3-container w3-center w3-border w3-border-black">
            <p id="name22" name="name22" onclick="apPop();" >결재선1</p>
            </div>
            <div class="w3-container w3-center w3-border w3-border-black">
                 <img src="${pageContext.servletContext.contextPath}/resources/images/stamp/no.JPG" 
                   style="width: 100px; height: 100px" alt="Avatar">
           </div>
         </div>
         <!-- 3번 결재 -->
         <div class="w3-col" style="width: 15%; background-color: white; font-weight: bold"">
            <div class="w3-container w3-center w3-border w3-border-black">
                 <p id="name33" name="name33" onclick="apPop2();" >결재선2</p>
            </div>
            <div class="w3-container w3-center w3-border w3-border-black">
                 <img src="${pageContext.servletContext.contextPath}/resources/images/stamp/no.JPG" 
                   style="width: 100px; height: 100px" alt="Avatar">
            </div>
         </div>
         
         <div class="w3-padding-16"></div>
   </div>
    
   <div class="w3-padding-16"></div>
   
   <div class="approval_color_theme"  style="margin-left: 15%; margin-right: 15%;">
      <div class="w3-padding-16"></div>
   
   <div class="w3-row-padding">
      <div class="w3-half">
         <label>작성자</label>
         <input class="w3-input w3-border w3-border-black" style="height: 50px; type="text" id="name" name="name" value="${vo.name}" readonly >
      </div>
      <div class="w3-quarter">
         <label>부서</label>
         <input class="w3-input w3-border w3-border-black" style="height: 50px; type="text" id="deptName" name="deptName" value="${vo.deptName}" readonly>
      </div>
      <div class="w3-quarter">
         <label>팀명</label>
         <input class="w3-input w3-border w3-border-black" style="height: 50px; type="text" id="teamName" name="teamName" value="${vo.teamName}" readonly>
      </div>
   </div>
   
   <div class="w3-padding-16"></div>
   <div class="w3-padding">
      <label>제목</label>
        <input class="w3-input w3-border w3-border-black" style="height: 50px; type="text" name="title" required>
   </div>
   
   <div class="w3-padding-16"></div>
   <div class="w3-padding">
      <label>휴가종류</label><br>
     <input class="w3-radio" type="radio" name="holiday" value="연차" checked>연차&nbsp;&nbsp;
     <input class="w3-radio" type="radio" name="holiday" value="월차" >월차&nbsp;&nbsp;
     <input class="w3-radio" type="radio" name="holiday" value="병가" >병가&nbsp;&nbsp;
     <input class="w3-radio" type="radio" name="holiday" value="경조휴가" >경조휴가
   </div>
   
   <div class="w3-padding-16"></div>
   <div class="w3-row-padding">
      <div class="w3-half">
         <label>휴가시작</label>
         <input class="w3-input w3-border w3-border-black" id="startDt" style="height: 50px; type="text" name="startDt">
      </div>  
      
      <div class="w3-half">
         <label>휴가종료</label>
         <input class="w3-input w3-border w3-border-black" id="ednDt" style="height: 50px; type="text" name="endDt">
      </div>
   </div>

   <div class="w3-padding-16"></div>
   <div class="w3-padding">
      <label>사유</label>
        <textarea class="w3-input w3-border w3-border-black" type="text" name="content" 
                          required style="height:200px; resize: none;" ></textarea>
   </div>
      
   <div class="w3-padding-16"></div>
   <div class="w3-padding">
      <label>작성일자</label>
        <input class="w3-input w3-border w3-border-black" style="height: 50px; type="text" name="inDt" readonly="readonly">
   </div>
    
    <div class="w3-padding-16"></div>
   </div>   
   
   <div class="w3-padding-16"></div>
    
   <div class="w3-center">
      <button type="submit" class="w3-button w3-black w3-margin-bottom w3-hover-teal">
      <i class="fa fa-paper-plane w3-margin-right"></i>작성완료</button>
        <button type="submit" class="w3-button w3-black w3-margin-bottom w3-hover-teal">
      <i class="fa fa-paper-plane w3-margin-right"></i>다시작성</button>
   </div>
   
   </div>
</form></div>
  
<div class="w3-padding-16"></div>
</div>

<script>
InitApprovalTheme();
$(window).on('resize', SetApprovalMargin);
</script>
</html>