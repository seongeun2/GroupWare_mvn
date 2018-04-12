<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Hierarchy view component</title>

    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/orgTree-view.css">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/orgTree.css">
</head>
<body>

<div class="w3-main" style="margin-left: 100px; margin-right: 100px;">
   <div class="w3-padding">
   
     <!--Management Hierarchy-->
    <section class="management-hierarchy">
      
        <h1> 그리소프트 /조직도</h1>
                  
        <div style="text-align:right;">   
             <button class="w3-button w3-white w3-border w3-round-large" onclick="location.href='insa'">총 직원</button>
        </div> 
              
        <div class="hv-container">
            <div class="hv-wrapper">

                <!-- Key component -->
                <div class="hv-item">

                    <div class="hv-item-parent">
                        <div class="person">
                            <img src="${pageContext.servletContext.contextPath}/resources/images/3.png">
                            <p class="name">
                                   대표 <b>/ CEO</b>
                            </p>
                        </div>
                    </div>

                    <div class="hv-item-children">

                        <div class="hv-item-child">
                            <!-- Key component -->
                            <div class="hv-item">

                                <div class="hv-item-parent">
                                    <div class="person">
                                        
                                        <p class="name">
                                            경영지원부서
                                        </p>
                                    </div>
                                </div>

                                <div class="hv-item-children">

                                    <div class="hv-item-child">
                                        <div class="person">
                                              <img src="${pageContext.servletContext.contextPath}/resources/images/4.jpg">
                                            <p class="name">
                                                     인사팀 <br> <b>/ Personnel Team</b>
                                            </p>
                                        </div>
                                    </div>


                                    <div class="hv-item-child">
                                        <div class="person">
                                             <img src="${pageContext.servletContext.contextPath}/resources/images/5.jpg">
                                            <p class="name">
                                                   회계팀  <br><b>/ Accounting Team</b>
                                            </p>
                                        </div>
                                    </div>

                                    <div class="hv-item-child">
                                        <div class="person">
                                             <img src="${pageContext.servletContext.contextPath}/resources/images/6.png">
                                            <p class="name">
                                                   고객관리팀 <br><b>/  Customer Management Team</b>
                                            </p>
                                        </div>
                                    </div>

                                </div>

                            </div>
                        </div>


                        <div class="hv-item-child">
                            <!-- Key component -->
                            <div class="hv-item">

                                <div class="hv-item-parent">
                                    <div class="person">
                                        <p class="name">
                                             개발부서
                                        </p>
                                    </div>
                                </div>

                                <div class="hv-item-children">

                                    <div class="hv-item-child">
                                        <div class="person">
                                         <img src="${pageContext.servletContext.contextPath}/resources/images/7.jpg">
                                            <p class="name">
                                                   개발1팀 <br><b>/ Back-end</b>
                                            </p>
                                        </div>
                                    </div>


                                    <div class="hv-item-child">
                                        <div class="person">
                                          <img src="${pageContext.servletContext.contextPath}/resources/images/11.jpg">
                                            <p class="name">
                                                   개발2팀 <br><b>/ Back-end</b>
                                            </p>
                                        </div>
                                    </div>

                                </div>

                            </div>
                        </div>
                        
                              <div class="hv-item-child">
                            <!-- Key component -->
                            <div class="hv-item">

                                <div class="hv-item-parent">
                                    <div class="person">
                                        <p class="name">
                                               디자인부서
                                        </p>
                                    </div>
                                </div>

                                <div class="hv-item-children">

                                    <div class="hv-item-child">
                                        <div class="person">
                                            <img src="${pageContext.servletContext.contextPath}/resources/images/15.png">
                                            <p class="name">
                                                   디자인1팀 <br><b>/ Front-end</b>
                                            </p>
                                        </div>
                                    </div>


                                    <div class="hv-item-child">
                                        <div class="person">
                                            <img src="${pageContext.servletContext.contextPath}/resources/images/13.png">
                                            <p class="name">
                                                   디자인2팀 <br><b>/ Front-end</b>
                                            </p>
                                        </div>
                                    </div>

                                </div>

                            </div>
                        </div>

                    </div>

                </div>

            </div>

        </div>
   
    </section>
   </div>
</div>
    
</body>
</html>