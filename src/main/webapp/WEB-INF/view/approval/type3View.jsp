<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
 <script src="${pageContext.servletContext.contextPath}/resources/js/app.js"></script>
 
  <!-- Contact Section -->
<div class="w3-row-padding w3-center w3-padding-24" style="margin-left: 110px; margin-right: 110px;">
   <div class="w3-third w3-dark-grey w3-button w3-hover-teal" onclick="location.href='/GroupWare/approval/type1'">
      <p><i class="fa fa-envelope w3-xxlarge w3-text-light-grey"></i></p>
      <p>기안서</p>
   </div>
   <div class="w3-third w3-dark-grey w3-button w3-hover-teal" onclick="location.href='/GroupWare/approval/type2'">
      <p><i class="fa fa-map-marker w3-xxlarge w3-text-light-grey"></i></p>
      <p>휴가신청서</p>
   </div>
   <div class="w3-third w3-dark-grey w3-button w3-hover-teal" onclick="location.href='/GroupWare/approval/type3'">
      <p><i class="fa fa-phone w3-xxlarge w3-text-light-grey"></i></p>
      <p>지출결의서</p>
   </div>
</div>
   
   <!-- 사이 줄 그어줍니다. -->
<hr class="w3-opacity">
<div class="w3-padding-32 w3-border" style="margin-left: 120px; margin-right: 120px;">
<form action="apSave" target="_blank">
<input type="hidden" id="docNo" name="docNo" value="${vo.docNo}">
<input type="hidden" id="stamp2" name="stamp2" value="${vo.stamp2}">
   <div style="margin-left:300px; margin-right:300px;">
      <div class="w3-row w3-padding w3-blue-grey">
         <div class="w3-padding-16"></div>
         
      <div id="doc" class="w3-col" style="width: 55%;"><p class="w3-xxxlarge">지출결의서</p></div>
      <!-- 1번 결재 -->
      <div class="w3-col" style="width: 15%; height: 120px">
         <div class="w3-container w3-center w3-border">
            <p>${vo.user1}</p>
         </div>
         <div class="w3-container w3-center w3-border">
            <%-- <img src="${pageContext.servletContext.contextPath}/resources/images/mypic.gif" style="width: 100px; height: 100px" class="w3-circle" alt="Avatar"> --%>
              <p>${vo.stamp1}</p>
           </div>
         </div>
         <!-- 2번 결재 -->
      <div class="w3-col" style="width: 15%; height: 120px">
         <div class="w3-container w3-center w3-border">
            <p>${vo.user2}</p>
            </div>
            <div class="w3-container w3-center w3-border">
                 <%-- <img src="${pageContext.servletContext.contextPath}/resources/images/mypic.gif" style="width: 100px; height: 100px" class="w3-circle" alt="Avatar"> --%>
              <p>${vo.stamp2}</p>
           </div>
         </div>
         <!-- 3번 결재 -->
         <div id="third_approval" class="w3-col" style="width: 15%; height: 120px">
            <div class="w3-container w3-center w3-border">
                 <p id="result">${vo.user3}</p>
            </div>
            <div class="w3-container w3-center w3-border">
                 <%-- <img src="${pageContext.servletContext.contextPath}/resources/images/mypic.gif" style="width: 100px; height: 100px" class="w3-circle" alt="Avatar"> --%>
               <p>${vo.stamp3}</p>
            </div>
         </div>
         
         <script type="text/javascript">
         var result= document.getElementById("result").innerHTML;
         IsThird(result)
         </script>
         
         <div class="w3-padding-16"></div>
   </div>
    
   <div class="w3-padding-16"></div>
   
   <!-- 이 div에 포함되는 애들이 홀쭉해집니다. -->
   <div class="w3-blue-grey">
      <div class="w3-padding-16"></div>
      
   <div class="w3-row-padding">
      <div class="w3-half">
         <label>작성자</label>
         <input class="w3-input w3-border" type="text" value="${vo.name}" readonly >
      </div>
      <div class="w3-quarter">
         <label>부서</label>
         <input class="w3-input w3-border" type="text" value="${vo.deptName}" readonly>
      </div>
      <div class="w3-quarter">
         <label>팀명</label>
         <input class="w3-input w3-border" type="text" value="${vo.teamName}" readonly>
      </div>
   </div>
   
   <div class="w3-padding-16"></div>
      <div class="w3-padding">
         <label>제목</label>
           <input class="w3-input w3-border" type="text" name="Email" readonly>
      </div>

   <div class="w3-padding-16"></div>
   <div class="w3-padding">
      <label>내용</label>
        <textarea class="w3-input w3-border" type="text" name="Message" 
                          required style="height:200px; resize: none;" readonly>
 </textarea>
   </div>
      
   <div class="w3-padding-16"></div>
   <div class="w3-padding">
      <label>작성일자</label>
        <input class="w3-input w3-border" type="text" name="Email" readonly>
   </div>
   
   <div class="w3-padding-16"></div>
   </div>
   </div>

<c:if test="${vo.status eq 'st02'}">
<div class="w3-padding-16"></div>
   <div class="w3-center">
      <button type="submit" class="w3-button w3-black w3-margin-bottom w3-hover-teal">
      <i class="fa fa-paper-plane w3-margin-right"></i>결재</button>
   </div>
   </form>
   <div class="w3-center">
        <button onclick="docReturn('${vo.docNo}');" class="w3-button w3-black w3-margin-bottom w3-hover-teal">
      <i class="fa fa-paper-plane w3-margin-right"></i>반려</button>
   </div>
</div>
</c:if>
  
<div class="w3-padding-16"></div>
</html>