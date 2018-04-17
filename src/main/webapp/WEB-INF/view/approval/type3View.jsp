<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
 <script src="${pageContext.servletContext.contextPath}/resources/js/app.js"></script>

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

<form action="apSave" method="post">
<input type="hidden" id="docNo" name="docNo" value="${vo.docNo}">
<input type="hidden" id="stamp2" name="stamp2" value="${vo.stamp2}">
   <div id="approval_inner_margin">
      <div class="w3-row w3-padding w3-blue-grey">
         <div class="w3-padding-16"></div>
         
      <div id="doc" class="w3-col" style="width: 55%;"><p class="w3-xxxlarge" style="text-align:center;">지출결의서</p></div>
      
      <!-- 1번 결재 -->
      <div class="w3-col" style="width: 15%; background-color: white;">
         <div class="w3-container w3-center w3-border w3-border-black">
            <p>${vo.user1}</p>
         </div>
         <div class="w3-container w3-center w3-border w3-border-black">
            <%-- <img src="${pageContext.servletContext.contextPath}/resources/images/mypic.gif" style="width: 100px; height: 100px" class="w3-circle" alt="Avatar"> --%>
              <c:if test="${vo.stamp1 ne ''}">
              <p><img src="${pageContext.servletContext.contextPath}/resources/images/stamp/${vo.stamp1}.jpg" style="width: 100px; height: 100px" class="w3-circle" alt=""></p>
              </c:if>
           </div>
         </div>
         <!-- 2번 결재 -->
      <div class="w3-col" style="width: 15%; background-color: white;">
         <div class="w3-container w3-center w3-border w3-border-black">
            <p>${vo.user2}</p>
            </div>
            <div class="w3-container w3-center w3-border w3-border-black">
                 <%-- <img src="${pageContext.servletContext.contextPath}/resources/images/mypic.gif" style="width: 100px; height: 100px" class="w3-circle" alt="Avatar"> --%>
              <c:if test="${vo.stamp2 ne ''}">
              <p><img src="${pageContext.servletContext.contextPath}/resources/images/stamp/${vo.stamp2}.jpg" style="width: 100px; height: 100px" class="w3-circle" alt=""></p>
              </c:if>
           </div>
         </div>
         <!-- 3번 결재 -->
         <div class="w3-col" id="third_approval" style="width: 15%; background-color: white;">
            <div class="w3-container w3-center w3-border w3-border-black">
                 <p id="result">${vo.user3}</p>
            </div>
            <div class="w3-container w3-center w3-border w3-border-black">
                 <%-- <img src="${pageContext.servletContext.contextPath}/resources/images/mypic.gif" style="width: 100px; height: 100px" class="w3-circle" alt="Avatar"> --%>
               <c:if test="${vo.stamp3 ne ''}">
              <p><img src="${pageContext.servletContext.contextPath}/resources/images/stamp/${vo.stamp3}.jpg" style="width: 100px; height: 100px" class="w3-circle" alt=""></p>
              </c:if>
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
         <input class="w3-input w3-border w3-border-black" type="text" value="${vo.name}" readonly >
      </div>
      <div class="w3-quarter">
         <label>부서</label>
         <input class="w3-input w3-border w3-border-black" type="text" value="${vo.deptName}" readonly>
      </div>
      <div class="w3-quarter">
         <label>팀명</label>
         <input class="w3-input w3-border w3-border-black" type="text" value="${vo.teamName}" readonly>
      </div>
   </div>
   
   <div class="w3-padding-16"></div>
      <div class="w3-padding">
         <label>제목</label>
           <input class="w3-input w3-border w3-border-black" type="text" name="Email" readonly>
      </div>

   <div class="w3-padding-16"></div>
   <div class="w3-padding">
      <label>내용</label>
        <textarea class="w3-input w3-border w3-border-black" type="text" name="Message" 
                          required style="height:200px; resize: none;" readonly>
 </textarea>
   </div>
      
   <div class="w3-padding-16"></div>
   <div class="w3-padding">
      <label>작성일자</label>
        <input class="w3-input w3-border w3-border-black" type="text" name="Email" readonly>
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

</div>

<script>
InitApprovalTheme();
$(window).on('resize', SetApprovalMargin);
</script>

</html>