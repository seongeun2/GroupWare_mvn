<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
		<link rel="stylesheet" href="/GroupWare/resources/css/admin.css" />
		<script src="${pageContext.servletContext.contextPath}/resources/js/admin.js"></script>
	</head>
<body>
	<div class="w3-container w3-margin">
	  	<h1 align="center">-���� ���-</h1>
	</div>
	<div class="w3-container w3-content w3-margin-top">	
		<form class="w3-container w3-card-4" action="regEmployeePro" enctype="multipart/form-data" method="post">
			<p>
				<label>*�̸�</label>
				<input class="w3-input" type="text" style="width:90%" name="name" required>
			</p>
			
			<p>
				<label>*���̵�</label>
				<input class="w3-input" type="text" style="width:90%" name="id" required>
			</p>
			
			<p>
				<label>*��й�ȣ</label>
				<input class="w3-input" type="password" style="width:90%" name="pw" required>
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
				<select class="w3-select" name="tnum" id="tnum" required>
				 <option value="" disabled selected>�μ� ���� �� ���� �����ϼ���.</option>
				</select>
			</p>
			
			<div class="selectPosition"><p>*����</p>
				<input class="w3-radio" type="radio" name="position" value="3" required>����
				<input class="w3-radio" type="radio" name="position" value="4">�븮
				<input class="w3-radio" type="radio" name="position" value="5">���
			</div>
			
		<!-- 	<p>
				<label>*����</label>
			</p>
	
			<p>
				<input class="w3-radio" type="radio" name="position" value="3" required>
				<label>����</label>
			</p>
				
			<p>
				<input class="w3-radio" type="radio" name="position" value="4">
				<label>�븮</label>
			</p>
				
			<p>
				<input class="w3-radio" type="radio" name="position" value="5">
				<label>���</label>
			</p> -->
			
			<p>
				<label>*�Ի���</label>
				<input class="w3-input w3-padding-16 w3-border" type="date" placeholder="Date" name="joind" required>
			</p>
			
			<p>
				<label>*�̸���</label>
				<input class="w3-input" type="text" style="width:90%" name="email">
			</p>
			
			<p>
				<label>*�ڵ��� ��ȣ</label>
				<input class="w3-input" type="text" style="width:90%" name="phone">
			</p>
			
			<p>
				<label>*�系 ��ȣ</label>
				<input class="w3-input" type="text" style="width:90%" name="tel">
			</p>
			
			<!-- input file Image upload -->
			
	<!-- 		<label>*������</label>
			<div class="inner inputbox file-upload">
				<div style="text-align: center">
					<a href="#" class="button special fit" onclick="$('.file-upload-input').trigger( 'click' )">Add Image</a>
				</div>
				
				<div class="image-upload-wrap">
					<input class="file-upload-input" type="file" name="signature" onchange="readURL(this);" accept="image/*" size="40" maxlength="30" form="submitForm"/>
					<div class="drag-text">
						<h3>Drag and drop a file<br>or select add Image</h3>
					</div>
				</div>
							
				<div class="file-upload-content">
					<img class="file-upload-image" src="#" alt="your image" />
					<div class="image-title-wrap">
						<div style="text-align: center">
							<a href="#" class="button special fit" onclick="removeUpload()">Remove <span class="image-title">Uploaded Image</span></a>
						</div>
					</div>
				</div>
			</div> -->
			
			
			 <tr>
  				<td width="70" align="center">file</td>
  				<td width="330">
  				<input type="file" size="40" maxlength="30" name="uploadfile"> 
  				</td>
		    </tr>
			
			<p>
				<!-- <button type="submit" class="w3-button w3-section w3-teal w3-ripple">�Է� </button> -->
				<button type="submit" class="w3-button w3-black w3-margin-bottom w3-hover-teal" align="center">
      <i class="fa fa-paper-plane w3-margin-right"></i>�Է�</button>
			</p>
			
		</form>
	</div>

	<script>
		
		function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();
				reader.onload = function(e) {
					$('.image-upload-wrap').hide();
					$('.file-upload-image').attr('src', e.target.result);
					$('.file-upload-content').show();
					$('.image-title').html(input.files[0].name);
				};
	
				reader.readAsDataURL(input.files[0]);
			} else {
				removeUpload();
			}
		}
		
		function removeUpload() {
			$('.file-upload-input').replaceWith($('.file-upload-input').clone());
			$('.file-upload-content').hide();
			$('.image-upload-wrap').show();
		}
			$('.image-upload-wrap').bind('dragover', function () {
				$('.image-upload-wrap').addClass('image-dropping');
			});
			
			$('.image-upload-wrap').bind('dragleave', function () {
				$('.image-upload-wrap').removeClass('image-dropping');
			});
	</script>
</body>
</html> 