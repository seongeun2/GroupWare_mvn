<!DOCTYPE html>
<html>
   <title>W3.CSS</title>
   <%@ page language="java" contentType="text/html; charset=EUC-KR"
       pageEncoding="EUC-KR"%>
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
   <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/orgTree-view.css">
<body>

<script type="text/javascript">
function GenerateID() {
   // ��� row�� id�� �ο��մϴ�.
   // ��޿� ��� ������ �ѱ� ��, ����մϴ�.
   console.log("GenerateID");
   var rows = document.getElementById("emp_rows");
   var children = rows.getElementsByTagName("TR");
   var idname= "emp_";
   
   for(i = 0; i < children.length; i++) {
      var rowCount = i + 1;
      children[i].setAttribute("id", idname + rowCount);
   }
}

function PopupEmpInfo(clicked_element) {

   // ��� ������ ������� ��޿� �����մϴ�.
   // �Խ����� ���� ������ ��޿� �״�� �����ϱ� ������ ������ �����մϴ�.
   var row_td = clicked_element.getElementsByTagName("td");
   var modal = document.getElementById("modal_emp_info");
   var infos = document.getElementsByClassName("w3-")
   
   document.getElementById("emp_info_emnum").placeholder = row_td[0].innerHTML;
   document.getElementById("emp_info_dnum").placeholder = row_td[1].innerHTML;
   document.getElementById("emp_info_tnum").placeholder = row_td[2].innerHTML;
   document.getElementById("emp_info_name").placeholder = row_td[3].innerHTML;
   document.getElementById("emp_info_position").placeholder = row_td[4].innerHTML;
   document.getElementById("emp_info_tel").placeholder = row_td[5].innerHTML;
   document.getElementById("emp_info_email").placeholder = row_td[6].innerHTML;
   
   modal.style.display = 'block';
   
   if(IsAdmin() == true ) {
      ApplyForAdmin();
   }
}

function IsAdmin() {
   var session = document.getElementById("session_getter");
   var id = session.value;
   
   return id == "admin" ? true : false;
}

function ApplyForAdmin() {
   /* ������ ���� ��ư�� Ȱ��ȭ �մϴ�. */
   document.getElementById("modifyForAdmin").style.visibility = "visible";
   document.getElementById("deleteForAdmin").style.visibility = "visible";
   
   document.getElementById("emp_info_emnum").readOnly = false;
   document.getElementById("emp_info_dnum").readOnly = false;
   document.getElementById("emp_info_tnum").readOnly = false;
   document.getElementById("emp_info_name").readOnly = false;
   document.getElementById("emp_info_position").readOnly = false;
   document.getElementById("emp_info_tel").readOnly = false;
   document.getElementById("emp_info_email").readOnly = false;
}
function mem_search(frm){
	//ȸ���˻����
	var frm = document.mem_search;
	
	frm.submit();
}
</script>

<!-- session ���� �����Դϴ�. -->
<input id="session_getter" type="hidden" name="pONumb" value="${sessionScope.id}" />

 <div class="w3-container" style="margin: 40px 100px;">
<h2 style="text-align: center;">�� ����</h2>
<table class="w3-table-all w3-hoverable" style="text-align: center;">
   <!-- <col width="10%">   ��� -->
   <col width="15%">   <!-- �μ� -->
   <col width="15%">   <!-- �� -->
   <col width="10%">   <!-- �̸� -->
   <col width="10%">   <!-- ���� -->
   <!-- <col width="20%">   �系��ȣ -->
   <col width="20%">   <!-- �̸��� -->
   <thead>
      <tr class="w3-yellow">
          <!-- <th>���</th>emnum  -->
        <th>�μ�</th>  <!-- dnum -->
        <th>��</th>  <!-- dnum -->
       <th>�̸�</th><!-- name -->
       <th>����</th><!-- position -->
       <!-- <th>�系��ȣ</th>tel -->
       <th>�̸���</th><!-- email -->
      </tr>
   </thead>
   
<tbody id="emp_rows">
   <c:forEach var="li" items="${articleList}">
      <tr onclick="PopupEmpInfo(this)">
         <td style="display:none">${li.emnum}</td><!-- ��� -->
         <td>${li.dname}</td><!-- �μ� -->
         <td>${li.tname}</td><!-- �� -->
         <td>${li.name}</td><!-- �̸� -->
         <td>${li.position}</td><!-- ���� -->
         <td style="display:none">${li.tel}</td><!-- �系��ȣ -->
         <%-- <td style="display:none">${li.phone}</td><!-- �ڵ��� --> --%>
         <td>${li.email}</td><!-- �̸��� -->
      </tr>
   </c:forEach>
</tbody>

<!-- <script type="text/javascript">
GenerateID()
</script> -->
          
</table>
</div>

<!-- �ϴ� ������ -->
<div class="w3-center" style="margin-top: 20px; text-align: center;">
<c:if test="${count>0}">
   <c:if test="${startPage > bottomLine }">
      <a href="insa?pageNum=${startPage - bottomLine}">[����]</a> 
   </c:if>
   
   <c:forEach var="i" begin="${startPage}" end="${endPage}">   
      <a href="insa?pageNum=${i}">
   <c:if test="${i !=  currentPage}">[${i}]</c:if>
   <c:if test="${i ==  currentPage}">
      <font color='red'>[${i}]</font></c:if></a>
   </c:forEach>
   
   <c:if test="${endPage < pageCount}">
      <a href="insa?pageNum=${startPage+bottomLine}">[����]</a>
   </c:if>   
</c:if>
</div><br>

<!-- ȸ�� �˻� -->
<form name ="mem_search" method="post" style="text-align: center;">
   <select name="keyField" style="height: 30px;">
      <option value="">����</option>
      <option value="dname">�μ�</option>
      <option value="tname">��</option>
      <option value="name">�̸�</option>
   </select>
   <input type="text" size="20" name="keyWord">
   <input type="submit" value="�˻�" onclick="mem_search(form)" />&nbsp;
</form>
 

<!-- ��� ���� ���� ��� -->
<div class="w3-container">
   <div id="modal_emp_info" class="w3-modal">
      <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">
         <div class="w3-center"><br>
                  <span onclick="document.getElementById('modal_emp_info').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
         </div>
   
<div class="w3-container w3-text-blue w3-margin">
   <h2 class="w3-center">��� ����</h2>

   <div class="w3-container w3-border w3-border-blue">
      <!-- ��� ��ȣ -->
      <div class="w3-row w3-section">
         <div class="w3-col" style="width:50px">
            <i class="w3-xxlarge fa fa-star"></i>
         </div>
         <div class="w3-rest">
            <input id="emp_info_emnum" class="w3-input w3-border-blue w3-transparent" name="emnum" type="text" readonly="readonly">
         </div>
      </div>
      
      <!-- �̸� -->
      <div class="w3-row w3-section">
         <div class="w3-col" style="width:50px">
            <i class="w3-xxlarge fa fa-user"></i>
         </div>
         <div class="w3-rest">
            <input id="emp_info_name" class="w3-input w3-border-bottom w3-border-blue w3-pale-red" name="name" type="text" readonly="readonly">
         </div>
      </div>
      
      <!-- �μ� -->
      <div class="w3-row w3-section">
         <div class="w3-col" style="width:50px">
            <i class="w3-xxlarge fa fa-bookmark"></i>
         </div>
         <div class="w3-rest">
            <input id="emp_info_dnum" class="w3-input w3-border-bottom w3-border-blue w3-transparent" name="first" type="text" readonly="readonly">
         </div>
      </div>
      
      <!-- �� -->
      <div class="w3-row w3-section">
         <div class="w3-col" style="width:50px">
            <i class="w3-xxlarge fa fa-group"></i>
         </div>
         <div class="w3-rest">
            <input id="emp_info_tnum" class="w3-input w3-border-bottom w3-border-blue w3-transparent" name="tnum" type="text" readonly="readonly">
         </div>
      </div>
      
      <!-- ���� -->
      <div class="w3-row w3-section">
         <div class="w3-col" style="width:50px">
            <i class="w3-xxlarge fa fa-id-badge"></i>
         </div>
         <div class="w3-rest">
            <input id="emp_info_position" class="w3-input w3-border-bottom w3-border-blue w3-transparent" name="position" type="text" readonly="readonly">
         </div>
      </div>
      
      <!-- �系 ����ó -->
      <div class="w3-row w3-section">
         <div class="w3-col" style="width:50px">
            <i class="w3-xxlarge fa fa-phone"></i>
         </div>
         <div class="w3-rest">
            <input id="emp_info_tel" class="w3-input w3-border-bottom w3-border-blue w3-pale-red" name="first" type="text" readonly="readonly">
         </div>
      </div>
      
      <!-- �ڵ��� -->
      <!-- ���� �߰����� �ʾƼ� �ּ� -->
      <!-- <div class="w3-row w3-section">
         <div class="w3-col" style="width:50px">
            <i class="w3-xxlarge fa fa-star"></i>
         </div>
         <div class="w3-rest">
            <p class="w3-container"></p>
         </div>
      </div> -->
      
      <!-- �̸��� -->
      <div class="w3-row w3-section">
         <div class="w3-col" style="width:50px">
            <i class="w3-xxlarge fa fa-star"></i>
         </div>
         <div class="w3-rest">
            <input id="emp_info_email" class="w3-input w3-border-bottom w3-border-blue w3-transparent" name="email" type="text" readonly="readonly">
         </div>
      </div>
   
      <!-- <div class="w3-row w3-section">
        <div class="w3-col" style="width:50px">
           <i class="w3-xxlarge fa fa-commenting"></i>
        </div>
        <div class="w3-rest">
          <input class="w3-input w3-border" name="message" type="text" placeholder="����������" readonly="readonly">
        </div>
      </div> -->
   
   </div>
   <br>
   <c:if test="${id eq 'admin'}">
   <div class="w3-center">
      <div class="w3-bar">
      <!-- �������� ��쿡�� ������ ������ �����մϴ�. -->
         <button class="w3-button w3-section w3-blue" onclick="document.getElementById('modal_emp_info').style.display='none'"> Ȯ�� </button>
         
         <!-- ����� ���� ���� -->
         <button id="modifyForAdmin" class="w3-button w3-section w3-pink" style="visibility:visible" onclick="location.href='upEmployee'"> ���� </button>
         
         <!-- ����� ���� ���� -->
         <button id="deleteForAdmin" class="w3-button w3-section w3-red" style="visibility:visible"> ���� </button>
      </div>
   </div>
   </c:if>
</div>

      </div>
   </div>
</div>
   
</body>
</html>