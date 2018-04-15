<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
  <script src="${pageContext.servletContext.contextPath}/resources/js/app.js"></script>
  
<div class="w3-main">
	<!-- Contact Section -->
<div class="w3-row-padding w3-center w3-padding-24">
   <div class="w3-third approval_color_theme w3-button w3-hover-teal" onclick="location.href='/GroupWare/approval/type1'">
      <p><i class="fa fa-envelope w3-xxlarge w3-text-light-grey"></i></p>
      <p>��ȼ�</p>
   </div>
   <div class="w3-third approval_color_theme w3-button w3-hover-teal" onclick="location.href='/GroupWare/approval/type2'">
      <p><i class="fa fa-map-marker w3-xxlarge w3-text-light-grey"></i></p>
      <p>�ް���û��</p>
   </div>
   <div class="w3-third approval_color_theme w3-button w3-hover-teal" onclick="location.href='/GroupWare/approval/type3'">
      <p><i class="fa fa-phone w3-xxlarge w3-text-light-grey"></i></p>
      <p>������Ǽ�</p>
   </div>
</div>
 
<div id="approval_border" class="w3-padding-32">

<form action="apWrite" method="post">
<input type="hidden" name="typegubun" value="doc01">
<input type="hidden" id="id2" name="id2" value="${id2}">
<input type="hidden" id="id3" name="id3" value="${id3}">
<input type="hidden" id="name2" name="name2" value="${name2}">
<input type="hidden" id="name3" name="name3" value="${name3}">
   <div id="approval_inner_margin">
      <div class="w3-row w3-padding approval_color_theme">
         <div class="w3-padding-16"></div>
         
         <div class="w3-col" style="width: 55%;"><p class="w3-xxxlarge" style="text-align:center">�� �� ��</p></div>
         <!-- 1�� ���� -->
         <!-- 1�� ���� -->
      <div class="w3-col" style="width: 15%; background-color: white;">
         <div class="w3-container w3-center w3-border w3-border-black">
            <p id="name" name="name">${vo.name}</p>
         </div>
         <div class="w3-container w3-center w3-border w3-border-black">
            <img src="${pageContext.servletContext.contextPath}/resources/images/stamp/no.JPG" 
                    style="width: 100px; height: 100px" alt="Avatar">
           </div>
         </div>
         <!-- 2�� ���� -->
      <div class="w3-col" style="width: 15%; background-color: white;">
         <div class="w3-container w3-center w3-border w3-border-black">
            <p id="name22" name="name22" onclick="apPop();" >���缱1</p>
            </div>
            <div class="w3-container w3-center w3-border w3-border-black">
                 <img src="${pageContext.servletContext.contextPath}/resources/images/mypic.gif" 
                    style="width: 100px; height: 100px" class="w3-circle" alt="Avatar">
           </div>
         </div>
         <!-- 3�� ���� -->
         <div class="w3-col" style="width: 15%; background-color: white;">
            <div class="w3-container w3-center w3-border w3-border-black">
                 <p id="name33" name="name33" onclick="apPop2();" >���缱2</p>
            </div>
            <div class="w3-container w3-center w3-border w3-border-black">
                 <img src="${pageContext.servletContext.contextPath}/resources/images/mypic.gif" 
                  style="width: 100px; height: 100px" class="w3-circle" alt="Avatar">
            </div>
         </div>
            
            <div class="w3-padding-16"></div>
      </div>
       
   <div class="w3-padding-16"></div>
   
   <!-- �� div�� ���ԵǴ� �ֵ��� Ȧ�������ϴ�. -->
   <div class="approval_color_theme">
      <div class="w3-padding-16"></div>
      <div class="w3-row-padding">
         <div class="w3-half">
            <label>�ۼ���</label>
            <input class="w3-input w3-border w3-border-black" type="text" name="name" value="${vo.name}" readonly >
         </div>
         <div class="w3-quarter">
            <label>�μ�</label>
            <input class="w3-input w3-border w3-border-black" type="text" name="deptName" value="${vo.deptName}" readonly>
         </div>
         <div class="w3-quarter">
            <label>����</label>
            <input class="w3-input w3-border w3-border-black" type="text" name="teamName" value="${vo.teamName}" readonly>
         </div>
      </div>
      
      <div class="w3-padding-16"></div>
      <div class="w3-padding">
         <label>����</label>
           <input class="w3-input w3-border w3-border-black" type="text" name="title" required>
      </div>
   
      <div class="w3-padding-16"></div>
      <div class="w3-padding">
         <label>��ȳ���</label>
           <textarea class="w3-input w3-border w3-border-black" type="text" name="content" 
                             required style="height:300px; resize: none;" ></textarea>
      </div>
         
      <div class="w3-padding-16"></div>
      <div class="w3-padding">
         <label>�ۼ�����</label>
           <input class="w3-input w3-border w3-border-black" type="text" name="inDt" readonly="readonly">
      </div>
      
      <div class="w3-padding-16"></div>
   </div>
   
   <div class="w3-padding-16"></div>
   
   <div class="w3-center">
      <button type="submit" class="w3-button w3-black w3-margin-bottom w3-hover-teal">
      <i class="fa fa-paper-plane w3-margin-right"></i>�ۼ��Ϸ�</button>
        <button type="reset" class="w3-button w3-black w3-margin-bottom w3-hover-teal">
      <i class="fa fa-paper-plane w3-margin-right"></i>�ٽ��ۼ�</button>
   </div>
   
   </div>   
</form>
</div>
  
<div class="w3-padding-16"></div>
</div>

<script>
InitApprovalTheme();
$(window).on('resize', SetApprovalMargin);
</script>
  
</html>