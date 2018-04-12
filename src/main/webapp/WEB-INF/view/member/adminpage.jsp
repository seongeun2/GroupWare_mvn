<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<div class="w3-padding-16"></div>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<!-- First Grid: Logo & About -->
<div class="w3-row">
  <div class="w3-metro-dark-blue w3-container w3-center" style="height:400px">
     <div class="w3-padding-50">
      <h1>관리자 모드</h1>
    </div> 
    <div class="w3-padding-64">
      <a href="${pageContext.request.contextPath}/member/regEmployee" class="w3-button w3-metro-dark-blue w3-block w3-hover-blue-grey w3-padding-16">직원 등록</a>
      <a href="${pageContext.request.contextPath}/orgChart/insa" class="w3-button w3-metro-dark-blue w3-block w3-hover-teal w3-padding-16">총 직원 보기</a>
      <a href="${pageContext.request.contextPath}/board/list1" class="w3-button w3-metro-dark-blue w3-block w3-hover-dark-grey w3-padding-16">자유게시판</a>
      <a href="${pageContext.request.contextPath}/board/list2" class="w3-button w3-metro-dark-blue w3-block w3-hover-brown w3-padding-16">공지사항</a>
    </div>
  </div>
</div>

<div class="w3-padding-32"></div>

<div class="w3-row-padding">
  <div class="w3-quarter w3-container w3-red"><p>quarter</p></div>
  <div class="w3-quarter w3-container w3-purple"><p>quarter</p></div>
  <div class="w3-half">
    <div class="w3-row">
      <div class="w3-col w3-container w3-blue" style="width:35%"><p>35%</p></div>
      <div class="w3-rest w3-container w3-green"><p>w3-rest</p></div>
    </div>
  </div>
</div>
