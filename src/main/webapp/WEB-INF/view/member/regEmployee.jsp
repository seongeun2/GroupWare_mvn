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
	  	<h1>직원 등록</h1>
	</div>
	<div class="w3-container w3-half w3-margin-top">	
		<form class="w3-container w3-card-4" action="regEmployeePro" enctype="multipart/form-data" method="post">
			<p>
				<label>*이름</label>
				<input class="w3-input" type="text" style="width:90%" name="name" required>
			</p>
			
			<p>
				<label>*아이디</label>
				<input class="w3-input" type="text" style="width:90%" name="id" required>
			</p>
			
			<p>
				<label>*비밀번호</label>
				<input class="w3-input" type="password" style="width:90%" name="pw" required>
			</p>
			
			<p>
				<label>*부서</label>
				<select class="w3-select" name="option" id="option" onchange="doChange(this,'tnum')" required>
					<option value="" disabled selected>부서를 선택하세요.</option>
					<option value="1">경영지원부서</option>
					<option value="2">개발부서</option>
					<option value="3">디자인부서</option>
			 	</select>
			</p>
			
			<p>
				<label>*팀</label>
				<select class="w3-select" name="tnum" id="tnum" required>
				 <option value="" disabled selected>부서 선택 후 팀을 선택하세요.</option>
				</select>
			</p>
			
			<div class="selectPosition"><p>*직위</p>
				<input class="w3-radio" type="radio" name="position" value="3" required>팀장
				<input class="w3-radio" type="radio" name="position" value="4">대리
				<input class="w3-radio" type="radio" name="position" value="5">사원
			</div>
			
		<!-- 	<p>
				<label>*직위</label>
			</p>
	
			<p>
				<input class="w3-radio" type="radio" name="position" value="3" required>
				<label>팀장</label>
			</p>
				
			<p>
				<input class="w3-radio" type="radio" name="position" value="4">
				<label>대리</label>
			</p>
				
			<p>
				<input class="w3-radio" type="radio" name="position" value="5">
				<label>사원</label>
			</p> -->
			
			<p>
				<label>*입사일</label>
				<input class="w3-input w3-padding-16 w3-border" type="date" placeholder="Date" name="joind" required>
			</p>
			
			<p>
				<label>*이메일</label>
				<input class="w3-input" type="text" style="width:90%" name="email">
			</p>
			
			<p>
				<label>*핸드폰 번호</label>
				<input class="w3-input" type="text" style="width:90%" name="phone">
			</p>
			
			<p>
				<label>*사내 번호</label>
				<input class="w3-input" type="text" style="width:90%" name="tel">
			</p>
			
			<!-- input file Image upload -->
			
	<!-- 		<label>*도장등록</label>
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
				<!-- <button type="submit" class="w3-button w3-section w3-teal w3-ripple">입력 </button> -->
				<button type="submit" class="w3-button w3-black w3-margin-bottom w3-hover-teal">
      <i class="fa fa-paper-plane w3-margin-right"></i>입력</button>
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