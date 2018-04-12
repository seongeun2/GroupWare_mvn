<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<title>�����Խ���</title>

<!-- �����Խ��� boardId 2�� -->

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<body>

<div class="w3-container" style="margin: 40px 100px;">
  <h2 style="text-align: center;">�����Խ��� : ${boardid} �� (��ü ��:${count})</h2>
  
<!--  �۾��� ��ư  -->
   <p class="w3-right w3-padding-right-large">


<!-- ���� : writeFormUpload -->
<!-- ���� : ${boardid } -->
      <a href="writeFormUpload${boardid}">�۾���</a>   <!-- writeForm -->
   </p>

   <c:if test="${count==0 }">
      <table class="w3-table-all w3-hoverable"  width="700">
         <tr class="w3-teal">
            <td align="center">�Խ��ǿ� ����� ���� �����ϴ�.</td>
         </tr>
      </table>
   </c:if>


   <c:if test="${count!=0 }">

   <table class="w3-table-all w3-hoverable"  width="700">
       <thead>
         <tr class="w3-teal">
            <td align="center" width="50">��ȣ</td>
         <td align="center" width="250">�� ��</td>
         <td align="center" width="100">�ۼ���</td>
         <td align="center" width="150">�ۼ���</td>
         <td align="center" width="50">�� ȸ</td>
         <td align="center" width="100">IP</td>
      </tr>
       </thead>
    
    
    <c:forEach  var="article"  items="${articleList}">   
      <tr height="30">
         <td align="center" width="50">${number}</td>
         <c:set var="number" value="${number-1}"/>
         <td width="250">
<!-- ����: ${pageContext.request.contextPath} -->   
         <c:if test="${article.re_level>0}">
            <img src="${pageContext.request.contextPath}/resources/images/hyo-board-img/level.gif"
               width="${5 * article.re_level}" height="16"> 
            <img src="${pageContext.request.contextPath}/resources/images/hyo-board-img/re.gif">
         </c:if> 
   
         <c:if test="${article.re_level==0}">
             <img src="${pageContext.request.contextPath}/resources/images/hyo-board-img/level.gif"  height="16">
         </c:if>
         
<!-- ���� : ${boardid } -->
             <a href="content?num=${article.num}&pageNum=${currentPage}&boardid=${boardid}">
               ${article.subject}</a> 

          <c:if test="article.readcount>=20">
             <img src="${pageContext.request.contextPath}/resources/images/hyo-board-img/hot.gif" border="0" height="16">
         </c:if>
          </td>
         <td align="center" width="100">${article.writer}</td>
         <td align="center" width="150">${article.reg_date}</td>
         <td align="center" width="50">${article.readcount}</td>
         <td align="center" width="100">${article.ip}</td>
      </tr>   
   </c:forEach>
  </table>
  </c:if>
</div>


<!-- �ϴ� ������ -->
   <div class="w3-center" style="margin-top: 20px; text-align: center;">
   <c:if test="${count>0}">
   <c:if test="${startPage > bottomLine }">
      <!-- <a href="adList?pageNum=${startPage - bottomLine}">[����]</a>  -->
      <a href="list${boardid}?pageNum=${startPage - bottomLine}">[����]</a> 
   </c:if>
   
   <c:forEach var="i" begin="${startPage}" end="${endPage}">   
   <!-- <a href="adList?pageNum=${i}"> -->
   <a href="list${boardid}?pageNum=${i}">
   <c:if test="${i !=  currentPage}">[${i}]</c:if>
   <c:if test="${i ==  currentPage}">
   <font color='red'>[${i}]</font></c:if></a>
   </c:forEach>
   
   <c:if test="${endPage < pageCount}">
      <!-- <a href="adList?pageNum=${startPage+bottomLine}">[����]</a> -->
      <a href="list${boardid}?pageNum=${startPage+bottomLine}">[����]</a>
   </c:if>   
   </c:if>
   </div><br>
   
   
   
<!-- ȸ�� �˻� -->
   <form name ="Boardsearch" method="get" style="text-align: center;" action="./">
      <select name="keyField"  name="keyField" style="height: 30px;">
         <option>����</option>
           <option value="name" selected="selected">�̸�</option>
            <option value="subject">����</option>
            <option value="content">����</option>
      </select>
      <input type="text" size="20" name="keyWord">
      <input type="button" value="�˻�" onclick="mem_search(form)" />&nbsp;
   </form>
   
   
</body>
</html> 