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
	<script type="text/javascript">
	//�޷�
	$(document).ready(function () {
	     var date = new Date();
	     /* var currentMonth = date.getMonth();
	     var currentDate = date.getDate();
	     var currentYear = date.getFullYear(); */

	     $('#myDate').datepicker({
	        /*  minDate: new Date(currentYear, currentMonth, currentDate), */
	         dateFormat: 'yy-mm-dd'
	     });
	});
	
	//���̵� �ߺ�üũ
	$(function(){
	   $('#id').blur(function(){
		   
	      $.ajax({
	         type:"POST",
	         url:"checkSignup",
	         /* url:"checkSignup", */
	         data:{
	            "id":$('#id').val() //m_id 
	         },
	         success:function(data){	//data : checkSignup���� �Ѱ��� �����
	            if($.trim(data)=="YES"){
	               if($('#id').val()!=''){ //�Է��� ���� �������� (���� ���°�쿡�� ���â�� ���ͼ� ����)
	               alert("��밡���� ���̵��Դϴ�.");
	               }
	            }else{
	               if($('#id').val()!=''){
	                  alert("�ߺ��� ���̵��Դϴ�.");
	                  $('#id').val('');
	                  $('#id').focus();
	               }
	            }
	         }
	      })
	      
	   })
	   
	   //��й�ȣ Ȯ��
	   $('#pw2').blur(function(){
	      if($('#pw').val() != $('#pw2').val()){
	    	  if($('#pw2').val()!=''){
		    	  alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
	    		  $('#pw2').val('');
	              $('#pw2').focus();
	    	  }
	      }
	   })
	   	   
	});
	</script>
	<div class="w3-container w3-margin">
	  	<h1 align="center">-���� ���-</h1>
	</div>
	<div class="w3-container w3-content w3-margin-top">	
		<form class="w3-container w3-card-4" action="regEmployeePro" enctype="multipart/form-data" method="post">
			<!-- <input  type="hidden"   name="emnum" value="${emnum}"> -->
			<p>
				<label>*�̸�</label>
				<input class="w3-input" type="text" style="width:90%" name="name" required>
			</p>
			
			<p>
				<label>*���̵�</label>
				<input class="w3-input" type="text" style="width:90%" id="id" name="id" required>
			</p>
			
			<p>
				<label>*��й�ȣ</label>
				<input class="w3-input" type="password" style="width:20%" id="pw" name="pw" value="1234" required>
			</p>
			
			<p>
			<label>*��й�ȣ Ȯ��</label>
				<input class="w3-input" type="password" style="width:20%" id="pw2" value="1234" required>
			</p>
			
			<p>
				<label>*�μ�</label>
				<select class="w3-select" name="option" id="option" onchange="doChange(this,'tnum')" required>
					<option value="" disabled selected>�μ��� �����ϼ���.</option>
					<option value="1">�濵�����μ�</option>
					<option value="2">���ߺμ�</option>
					<option value="3">�����κμ�</option>
			 	</select>
			</p>
			
		 	<p>
				<label>*��</label>
				<select class="w3-select" name="tnum" id="tnum" onchange="doTeamChange(this)" required>
				 <option value="" disabled selected>�μ� ���� �� ���� �����ϼ���.</option>
				</select>
			</p> 
			
			
			<div class="selectPosition"><p>*����</p>
				<input class="w3-radio" type="radio" name="position" value="3" required>����
				<input class="w3-radio" type="radio" name="position" value="4">�븮
				<input class="w3-radio" type="radio" name="position" value="5">���
			</div>
			
			
			<p>
				<label>*�Ի���</label>
				<input class="w3-input w3-padding-16 w3-border" type="text" id="myDate" placeholder="Ŭ��!" name="joind" required>
			</p>
			
			<p>
				<label>*�̸���</label>
				<input class="w3-input" type="email" style="width:90%" name="email">
			</p>
			
			<p>
				<label>*�ڵ��� ��ȣ</label>
				<input class="w3-input" type="text" style="width:90%" name="phone">
			</p>
			
			<p>
				<label>*�系 ��ȣ</label>
				<input class="w3-input" type="text" style="width:90%" name="tel">
			</p>
		
			 <tr>
  				<td width="70" align="center">*����</td>
  				<td width="330">
  				<input type="file" size="40" maxlength="30" name="uploadfile"> 
  				</td>
		    </tr>
		    
		    <tr>
  				<td width="70" align="center">*�����ʻ���</td>
  				<td width="330">
  				<input type="file" size="40" maxlength="30" name="profileimage"> 
  				</td>
		    </tr>
			
			<div align="center">
				<p>
					<button type="button" class="w3-button w3-black w3-margin-bottom w3-hover-teal" onclick="location.href = '../main'" align="center"> ����</button>
			
				
				
					<button type="submit" class="w3-button w3-black w3-margin-bottom w3-hover-teal" align="center">
	     			<i class="fa fa-paper-plane w3-margin-right"></i>�Է�</button>
				
				
				
					<button type="reset" class="w3-button w3-black w3-margin-bottom w3-hover-teal" align="center"> ���</button>
				</p>
			</div>	
		</form>
	</div>

</body>
</html> 