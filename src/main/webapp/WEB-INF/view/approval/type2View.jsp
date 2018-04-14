<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<script src="${pageContext.servletContext.contextPath}/resources/js/app.js"></script>

<div class="w3-main">

  <!-- Contact Section -->
<div class="w3-row-padding w3-center w3-padding-24" style="margin-left: 110px; margin-right: 110px;">
   <div class="w3-third w3-dark-grey w3-button w3-hover-teal" onclick="location.href='/GroupWare/approval/type1'">
      <p><i class="fa fa-envelope w3-xxlarge w3-text-light-grey"></i></p>
      <p>��ȼ�</p>
   </div>
   <div class="w3-third w3-dark-grey w3-button w3-hover-teal" onclick="location.href='/GroupWare/approval/type2'">
      <p><i class="fa fa-map-marker w3-xxlarge w3-text-light-grey"></i></p>
      <p>�ް���û��</p>
   </div>
   <div class="w3-third w3-dark-grey w3-button w3-hover-teal" onclick="location.href='/GroupWare/approval/type3'">
      <p><i class="fa fa-phone w3-xxlarge w3-text-light-grey"></i></p>
      <p>������Ǽ�</p>
   </div>
</div>
   
<div class="w3-padding-32 w3-border">
<form action="apSave" target="_blank">
<input type="hidden" id="docNo" name="docNo" value="${vo.docNo}">
<input type="hidden" id="stamp2" name="stamp2" value="${vo.stamp2}">
   
   <div style="margin-left:300px; margin-right:300px;">
      <div class="w3-row w3-padding w3-blue-grey">
         <div class="w3-padding-16"></div>
         
         <div id="doc" class="w3-col" style="width: 55%;"><p class="w3-xxxlarge" style="text-align:center;">�ް���û��</p></div>
   
      <!-- 1�� ���� -->
      <div class="w3-col" style="width: 15%; height: 120px">
         <div class="w3-container w3-center w3-border">
            <p>${vo.user1}</p>
         </div>
         <div class="w3-container w3-center w3-border">
            <%-- <img src="${pageContext.servletContext.contextPath}/resources/images/mypic.gif" style="width: 100px; height: 100px" class="w3-circle" alt="Avatar"> --%>
              <p>${vo.stamp1}</p>
           </div>
         </div>
         <!-- 2�� ���� -->
      <div class="w3-col" style="width: 15%; height: 120px">
         <div class="w3-container w3-center w3-border">
            <p>${vo.user2}</p>
            </div>
            <div class="w3-container w3-center w3-border">
                 <%-- <img src="${pageContext.servletContext.contextPath}/resources/images/mypic.gif" style="width: 100px; height: 100px" class="w3-circle" alt="Avatar"> --%>
              <p>${vo.stamp2}</p>
           </div>
         </div>
         <!-- 3�� ���� -->
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
   
   <!-- �� div�� ���ԵǴ� �ֵ��� Ȧ�������ϴ�. -->
   <div class="w3-blue-grey">
      <div class="w3-padding-16"></div>
      
   <div class="w3-row-padding">
      <div class="w3-half">
         <label>�ۼ���</label>
         <input class="w3-input w3-border" type="text" value="${vo.name}" readonly >
      </div>
      <div class="w3-quarter">
         <label>�μ�</label>
         <input class="w3-input w3-border" type="text" value="${vo.deptName}" readonly>
      </div>
      <div class="w3-quarter">
         <label>����</label>
         <input class="w3-input w3-border" type="text" value="${vo.teamName}" readonly>
      </div>
   </div>
   
   <div class="w3-padding-16"></div>
   <div class="w3-padding">
      <label>����</label>
        <input class="w3-input w3-border" type="text" value="${vo.title}" readonly>
   </div>
   
   <div class="w3-padding-16"></div>
   <div class="w3-padding">
      <label>�ް�����</label>
        <input class="w3-input w3-border" type="text" value="${vo.holiday}" readonly>
   </div>
   
   
   <div class="w3-padding-16"></div>
   <div class="w3-row-padding">
      <div class="w3-half">
         <label>�ް�����</label>
         <input class="w3-input w3-border" id="startDt" type="text" value="${vo.startDt}" readonly>
      </div>
      <div class="w3-half">
         <label>�ް�����</label>
         <input class="w3-input w3-border" id="ednDt" type="text" value="${vo.endDt}" readonly>
      </div>
   </div>
   
   <div class="w3-padding-16"></div>
   <div class="w3-padding">
      <label>����</label>
      <textarea class="w3-input w3-border" type="text" name="Message" 
              required style="height:200px; resize: none;" readonly>${vo.content}</textarea>
   </div>
      
   
   <div class="w3-padding-16"></div>
   <div class="w3-padding">
      <label>�ۼ�����</label>
        <input class="w3-input w3-border" type="text" value="${vo.inDt}" readonly>
   </div>
   
   <div class="w3-padding-16"></div>
   </div>
   </div>

<c:if test="${vo.status eq 'st02'}">
<div class="w3-padding-16"></div>
   <div class="w3-center">
      <button type="submit" class="w3-button w3-black w3-margin-bottom w3-hover-teal">
      <i class="fa fa-paper-plane w3-margin-right"></i>����</button>
   </div>
</form>
   <div class="w3-center">
        <button onclick="docReturn('${vo.docNo}');" class="w3-button w3-black w3-margin-bottom w3-hover-teal">
      <i class="fa fa-paper-plane w3-margin-right"></i>�ݷ�</button>
   </div>
</div>
</c:if>
  
<div class="w3-padding-16"></div>

</div>
</html>