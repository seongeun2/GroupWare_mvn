<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ftm" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
a{text-decoration: none;}
</style>
<div class="w3-padding-16"></div>

<div class="w3-main">

<!-- �Խ��� div ���� -->

<div class="w3-row-padding" style="margin-right: 8px;">
   <div class="w3-half w3-container w3-padding w3-metro-dark-blue">
      <div class="w3-row">
         <h5 onclick="location='board/list2'">��������</h5>
         <div class="w3-col" style="width: 100%;">
            <table class="w3-table w3-striped w3-white">
               
               
                
    <c:if test="${count2==0 }">
		<table class="w3-table-all w3-hoverable"  width="700">
			<tr class="w3-teal">
				<td align="center">�Խ��ǿ� ����� ���� �����ϴ�.</td>
			</tr>
		</table>
	</c:if>
         
    <c:if test="${count2!=0 }">                      
        <c:forEach  var="article"  items="${articleList2}">	
		<tr height="30">
			<td align="center" width="50">${number2}</td>
			<c:set var="number2" value="${number2-1}"/>
			<td width="350">
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
<!-- <a href="content?num=${article.num}&pageNum=${currentPage}&boardid=${boardid}"> -->
<!-- ���� : content?num=${article.num}&pageNum=${currentPage} ���� => �� �տ� board/ �߰� -->
<!-- board/content?num=${article.num}&pageNum=${currentPage} -->
		 	<a href="board/content?num=${article.num}&pageNum=${currentPage}&boardid=2">
					${article.subject}</a>
 			<c:if test="article.readcount>=20">
 				<img src="${pageContext.request.contextPath}/resources/images/hyo-board-img/hot.gif" border="0" height="16">
			</c:if>
 			</td>
			<td align="center" width="100">${article.writer}</td>
			<%-- <td align="center" width="150">${article.reg_date}</td> --%>
			<td align="center" width="50"></td>
			<td>
				<ftm:formatDate value="${article.reg_date}" pattern="yyyy-MM-dd"/>
			</td>
		</tr>	
		</c:forEach>
           
             </c:if>
            </table>
          <div class="w3-padding-16"></div>
         </div>
         
         <!-- <div class="w3-col" style="width: 20%;">
            <div class="w3-display-container">
               <div class="w3-display-middle w3-metro-light-blue">
                  <i class="fa fa fa-plus-square-o" style="font-size: 48px;"></i>
               </div>
               <div class="w3-display-bottommiddle">
                  <p>more</p>
               </div>
            </div>
         </div> -->
      </div>  
   </div>
   
   
   
   <div class="w3-half w3-container w3-padding w3-metro-dark-blue">
      <div class="w3-row">
         <h5 onclick="location='board/list1'">�����Խ���</h5>
         <div class="w3-col" style="width: 100%;">
            <table class="w3-table w3-striped w3-white">
              
               
     <c:if test="${count==0}">
		<table class="w3-table-all w3-hoverable"  width="700">
			<tr class="w3-teal">
				<td align="center">�Խ��ǿ� ����� ���� �����ϴ�.</td>
			</tr>
		</table>
	</c:if>
         
    <c:if test="${count!=0}">                      
        <c:forEach  var="article"  items="${articleList1}">	
		<tr height="30">
			<td align="center" width="50">${number}</td>
			<c:set var="number" value="${number-1}"/>
			<td width="350">
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
<!-- <a href="content?num=${article.num}&pageNum=${currentPage}&boardid=${boardid}"> -->
<!-- ���� : content?num=${article.num}&pageNum=${currentPage} ���� => �� �տ� board/ �߰� -->
<!-- board/content?num=${article.num}&pageNum=${currentPage} -->
		 		<a href="board/content?num=${article.num}&pageNum=${currentPage}&boardid=1">
					${article.subject}</a> 

 			<c:if test="article.readcount>=20">
 				<img src="${pageContext.request.contextPath}/resources/images/hyo-board-img/hot.gif" border="0" height="16">
			</c:if>
 			</td>
			<td align="center" width="100">${article.writer}</td>
			<%-- <td align="center" width="150">${article.reg_date}</td> --%>
			<td align="center" width="50"></td>
			<td>
				<ftm:formatDate value="${article.reg_date}" pattern="yyyy-MM-dd"/>
			</td>
		</tr>	
		</c:forEach>
               
               
           </c:if>
            </table>
            <div class="w3-padding-16"></div>
            
         </div>
         
         <!-- <div class="w3-col" style="width: 20%;">
            <div class="w3-display-container">
               <div class="w3-display-middle w3-metro-light-blue">
                  <i class="fa fa fa-plus-square-o" style="font-size: 48px;"></i>
               </div>
               <div class="w3-display-bottommiddle">
                  <p>more</p>
               </div>
            </div>
         </div> -->
      </div>
      
   </div>
      
</div>

<div class="w3-padding-32"></div>
	
<!-- 	<div class="w3-row-padding">
	  <div class="w3-quarter w3-metro-blue" style="height: 30px"><p></p></div>
	  <div class="w3-quarter w3-metro-blue" style="height: 30px"><p></p></div>
	      <div class="w3-quarter w3-metro-blue" style="height: 30px"><p></p></div>
	      <div class="w3-quarter w3-metro-blue" style="height: 30px"><p></p></div>
	    </div> -->
<div class="w3-row-padding">
	  <div class="w3-quarter w3-container w3-red" style="height: 30px"><p></p></div>
	  <div class="w3-quarter w3-container w3-purple" style="height: 30px"><p></p></div>

	      <div class="w3-quarter w3-container w3-blue" style="height: 30px"><p></p></div>
	      <div class="w3-quarter w3-container w3-green" style="height: 30px"><p></p></div>
	    </div>
</div>