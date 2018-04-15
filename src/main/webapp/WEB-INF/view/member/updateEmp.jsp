<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
		<script src="${pageContext.servletContext.contextPath}/resources/js/admin.js"></script>
	</head>
<body>
	<div class="w3-container w3-margin">
	  	<h1 align="center">-���� ����-</h1>
	</div>
	<div class="w3-container w3-content w3-margin-top">	
		<form class="w3-container w3-card-4" action="regEmployeePro" enctype="multipart/form-data" method="post">
			<!-- <input  type="hidden"   name="emnum" value="${emnum}"> -->
			<p>
				<label>*�̸�</label>
				<input class="w3-input" type="text" style="width:90%" name="name" value="${article.name}" required>
			</p>
			
			<p>
				<label>*���̵�</label>
				<input class="w3-input" type="text" style="width:90%" name="id" value="${article.id}" required>
			</p>
			
			<p>
				<label>*��й�ȣ</label>
				<input class="w3-input" type="password" style="width:90%" name="pw" value="${article.pw}" required>
			</p>
			
			<p>
				<label>*�μ�</label>
				<select class="w3-select" name="option" id="option" onchange="doChange(this,'tnum')"  required>
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
				<input class="w3-radio" type="radio" name="position" value="3" value="${article.position}" required>����
				<input class="w3-radio" type="radio" name="position" value="4">�븮
				<input class="w3-radio" type="radio" name="position" value="5">���
			</div>
			
			
			<p>
				<label>*�Ի���</label>
				<input class="w3-input w3-padding-16 w3-border" type="date" placeholder="Date" name="joind" value="${article.joind}" required>
			</p>
			
			<p>
				<label>*�̸���</label>
				<input class="w3-input" type="text" style="width:90%" name="email" value="${article.email}">
			</p>
			
			<p>
				<label>*�ڵ��� ��ȣ</label>
				<input class="w3-input" type="text" style="width:90%" name="phone" value="${article.phone}">
			</p>
			
			<p>
				<label>*�系 ��ȣ</label>
				<input class="w3-input" type="text" style="width:90%" name="tel" value="${article.tel}">
			</p>
		
			 <tr>
  				<td width="70" align="center">*����</td>
  				<td width="330">
  				<input type="file" size="40" maxlength="30" name="uploadfile" value="${article.signature}"> 
  				</td>
		    </tr>
		    
		    <tr>
  				<td width="70" align="center">*�����ʻ���</td>
  				<td width="330">
  				<input type="file" size="40" maxlength="30" name="profileimage" value="${article.profile}"> 
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