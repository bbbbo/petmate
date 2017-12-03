<%@page language="java" contentType="text/html; charset=EUC-KR"
		pageEncoding="EUC-KR" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>PetMate_ȸ������</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel=stylesheet href="<c:url value='/css/user.css' />" type="text/css">
<script>
function userCreate() {
   if (form.userId.value == "") {
      alert("����� ID�� �Է��Ͻʽÿ�.");
      form.userId.focus();
      return false;
   } 
   if (form.pwd.value == "") {
      alert("��й�ȣ�� �Է��Ͻʽÿ�.");
      form.pwd.focus();
      return false;
   }
   if (form.pwd2.value != form.pwd2.value) {
      alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
      form.name.focus();
      return false;
   }
   if (form.name.value == "") {
      alert("�̸��� �Է��Ͻʽÿ�.");
      form.name.focus();
      return false;
   }
   if (form.region.value == "") {
	   alert("������ �Է��Ͻÿ�.");
	   form.region.focus();
	   return false;
   }
   
   form.submit();
}

function userList(targetUri) {
   form.action = targetUri;
   form.submit();
}
</script>
</head>
<body bgcolor=#FFFFFF text=#000000 leftmargin=0 topmargin=0 marginwidth=0 marginheight=0>
<br>
<center>
<h1>PetMate</h1>
</center>
<!-- registration form  -->
<form name="form" method="POST" action="<c:url value='/member/register' />">
  <table style="width: 100%">
    <tr>
      <td width="20"></td>
     <td>
       <table style="width: 100%">
        <tr>
          <td bgcolor="f4f4f4" height="22" align="center">&nbsp;&nbsp;<b>����� ���� - ȸ�� ����</b></td>
        </tr>
       </table>  
       <br>    
       
       <c:if test="${registerFailed}">
         <font color="red"><c:out value="${exception.getMessage()}" /></font>
       </c:if>
           
       <br>     
       <table style="background-color: #FF6CEB" align="center">
         <tr height="40">
         <td width="150" align="center" bgcolor="ffffff">����� ID</td>
         <td width="250" bgcolor="ffffff" style="padding-left: 10">
            <input type="text" style="width: 240;" name="userId">
         </td>
        </tr>
          <tr height="40">
         <td width="150" align="center" bgcolor="ffffff">��й�ȣ</td>
         <td width="250" bgcolor="ffffff" style="padding-left: 10">
            <input type="password" style="width: 240" name="pwd">
         </td>
        </tr>
          <tr height="40">
         <td width="150" align="center" bgcolor="ffffff">��й�ȣ Ȯ��</td>
         <td width="250" bgcolor="ffffff" style="padding-left: 10">
            <input type="password" style="width: 240" name="pwd2">
         </td>
        </tr>
          <tr height="40">
         <td width="150" align="center" bgcolor="ffffff">�̸�</td>
         <td width="250" bgcolor="ffffff" style="padding-left: 10">
            <input type="text" style="width: 240" name="name" 
                <c:if test="${registerFailed}">value="${user.name}"</c:if>>
         </td>
        </tr>
         </tr>
          <tr height="40">
         <td width="150" align="center" bgcolor="ffffff">����</td>
         <td width="250" bgcolor="ffffff" style="padding-left: 10">
            <input type="text" style="width: 240" name="region" 
                <c:if test="${registerFailed}">value="${user.region}"</c:if>>
         </td>
        </tr>
        
        <!--
          <tr height="40">
         <td width="150" align="center" bgcolor="E6ECDE">�̸��� �ּ�</td>
         <td width="250" bgcolor="ffffff" style="padding-left: 10">
            <input type="text" style="width: 240" name="email" 
               <c:if test="${registerFailed}">value="${user.email}"</c:if>>
         </td>
        </tr>   
          <tr height="40">
         <td width="150" align="center" bgcolor="E6ECDE">��ȭ��ȣ</td>
         <td width="250" bgcolor="ffffff" style="padding-left: 10">
            <input type="text" style="width: 240" name="phone" 
               <c:if test="${registerFailed}">value="${user.phone}"</c:if>>
         </td>
        </tr>      
        
        -->  
       </table>
       <br>     
       <table style="width: 100%">
        <tr>
         <td align="center"> 
         <input type="button" value="ȸ�� ����" onClick="userCreate()"> &nbsp;
         <!-- <input type="button" value="���" onClick="memberList('<c:url value='/member/list' />')"> -->
         </td>
        </tr>
       </table>
     </td>
    </tr>
  </table>  
</form>
</body>
</html>