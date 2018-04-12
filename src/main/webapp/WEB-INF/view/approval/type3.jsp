<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<script src="${pageContext.servletContext.contextPath}/resources/js/app.js"></script>
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
   
   <!-- ���� �� �׾��ݴϴ�. -->
<hr class="w3-opacity">
<div class="w3-padding-32 w3-border" style="margin-left: 120px; margin-right: 120px;">
<form action="apWrite" target="_blank">
<input type="hidden" name="typegubun" value="doc03">
<input type="hidden" id="id2" name="id2" value="${id2}">
<input type="hidden" id="id3" name="id3" value="${id3}">
<input type="hidden" id="name2" name="name2" value="${name2}">
<input type="hidden" id="name3" name="name3" value="${name3}">

<div style="margin-left:300px; margin-right:300px;">
   <div class="w3-row w3-padding w3-blue-grey">
      <div class="w3-padding-16"></div>
      
      <div class="w3-col" style="width: 55%;"><p class="w3-xxxlarge">������Ǽ�</p></div>
      <!-- 1�� ���� -->
      <div class="w3-col" style="width: 15%; height: 120px">
         <div class="w3-container w3-center w3-border">
            <p id="name" name="name">${vo.name}</p>
         </div>
         <div class="w3-container w3-center w3-border">
            <img src="${pageContext.servletContext.contextPath}/resources/images/mypic.gif" 
                    style="width: 100px; height: 100px" class="w3-circle" alt="Avatar">
           </div>
         </div>
         <!-- 2�� ���� -->
      <div class="w3-col" style="width: 15%; height: 120px">
         <div class="w3-container w3-center w3-border">
            <p id="name22" name="name22" onclick="apPop();" >����</p>
            </div>
            <div class="w3-container w3-center w3-border">
                 <img src="${pageContext.servletContext.contextPath}/resources/images/mypic.gif" 
                    style="width: 100px; height: 100px" class="w3-circle" alt="Avatar">
           </div>
         </div>
         <!-- 3�� ���� -->
         <div class="w3-col" style="width: 15%; height: 120px">
            <div class="w3-container w3-center w3-border">
                 <p id="name22" name="name33" onclick="apPop();" >����</p>
            </div>
            <div class="w3-container w3-center w3-border">
                 <img src="${pageContext.servletContext.contextPath}/resources/images/mypic.gif" 
                  style="width: 100px; height: 100px" class="w3-circle" alt="Avatar">
            </div>
         </div>
         
         <div class="w3-padding-16"></div>
   </div>
    
   <div class="w3-padding-16"></div>
   
   <div class="w3-blue-grey">
      <div class="w3-padding-16"></div>
      
   <div class="w3-row-padding">
      <div class="w3-half">
         <label>�ۼ���</label>
         <input class="w3-input w3-border" type="text" id="name" name="name" value="${vo.name}" readonly >
      </div>
      <div class="w3-quarter">
         <label>�μ�</label>
         <input class="w3-input w3-border" type="text" id="deptName" name="deptName" value="${vo.deptName}" readonly>
      </div>
      <div class="w3-quarter">
         <label>����</label>
         <input class="w3-input w3-border" type="text" id="teamName" name="teamName" value="${vo.teamName}" readonly>
      </div>
   </div>
   
   <div class="w3-padding-16"></div>
      <div class="w3-padding">
         <label>����</label>
           <input class="w3-input w3-border" type="text" name="title" required>
      </div>

   <div class="w3-padding-16"></div>
   <div class="w3-padding">
      <label>����</label>
        <textarea class="w3-input w3-border" type="text" name="content" 
                          required style="height:200px; resize: none;" >
�������� : 2018-01-01
����ݾ� : 200,000
������� : �߱� �Ĵ�
 </textarea>
   </div>
      
   <div class="w3-padding-16"></div>
   <div class="w3-padding">
      <label>�ۼ�����</label>
        <input class="w3-input w3-border" type="text" name="inDt" readonly="readonly">
   </div>
      
   <div class="w3-padding-16"></div>
   </div>   
   
   <div class="w3-padding-16"></div>
    
   <div class="w3-center">
      <button type="submit" class="w3-button w3-black w3-margin-bottom w3-hover-teal">
      <i class="fa fa-paper-plane w3-margin-right"></i>�ۼ��Ϸ�</button>
        <button type="submit" class="w3-button w3-black w3-margin-bottom w3-hover-teal">
      <i class="fa fa-paper-plane w3-margin-right"></i>�ٽ��ۼ�</button>
   </div>
   
   </div>
</form></div>
  
<div class="w3-padding-16"></div>
</html>