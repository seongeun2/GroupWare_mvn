<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

</head>
<body>
<div class="w3-main">
<div id="container">
<div class="w3-container w3-padding-32">

		<form class="w3-container" id="rform" method="post" style="margin-left: -10px; background-color: #2b5797;">
			<div id="rformdata" style="height: 60px; text-align:  center; margin-top: 30px;">
				<label class="rtitle" style="font-size: 20px;color:  white;">게시판 항목</label>&nbsp;&nbsp;
				<select class="ritem" style="height: 30px;" name="item" >
					<option value="subject">제목</option>
					<option value="content">내용</option>
				</select>&nbsp;&nbsp;
				
				<label class="rtitle" style="font-size: 20px;color:  white;">시각옵션</label>&nbsp;&nbsp;
				<select class="ritem" style="height: 30px;" name="type" >
					<option value="wordcloud">wordcloud</option>
					<option value="pie">pie</option>&nbsp;&nbsp;&nbsp;&nbsp;
				</select>

				<%-- <label class="rtitle">image Name</label>
				<input class="ritem" name="imgname" type="text"  value="${imgname}"> --%>

				<input id="button" type="submit" class="form-control" value="확인">
				<a href="/GroupWare/R/RfromDB" style="float: right"><h3>쪽지이동</h3></a>	
			</div>
		</form>
	
	
		<div id="rformoutput" style="text-align: center"> 
			<img src="<%=request.getContextPath() %>/img/ccc.jpg"/>
		</div>
</div></div></div>
</body>
</html>