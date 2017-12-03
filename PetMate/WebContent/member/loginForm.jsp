<%@page language="java" contentType="text/html; charset=EUC-KR"
      pageEncoding="EUC-KR" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<title>PetMate_Login</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel=stylesheet href="<c:url value='/css/user.css' />" type="text/css">
<script>
function login() {
   if (form.userID.value == "") {
      alert("����� ID�� �Է��Ͻʽÿ�.");
      form.userId.focus();
      return false;
   } 
   if (form.pwd.value == "") {
      alert("��й�ȣ�� �Է��Ͻʽÿ�.");
      form.password.focus();
      return false;
   }      
   form.submit();
}

function userCreate(targetUri) {
   form.action = targetUri;
   form.submit();
}
</script>
</head>
<body bgcolor=#FFFFFF text=#000000 leftmargin=0 topmargin=0 marginwidth=0 marginheight=0>
<br>
<table align="center">
<tr> 
	<td><h1><font color=#FF5E00 size="24px">PetMate</font></h1></td> 
	<td>&nbsp;<img src="<c:url value='/images/chat_caticon.png' />">
</tr>
</table>

<!-- login form  -->
<form name="form" method="POST" action="<c:url value='/member/login' />">   <!-- LoginController��  , Suc) redirect:main Fail) LoginForm.jsp -->
  <table style="width:100%">
   <tr>
     <td width="20"></td>
     <td>
       <table style="width:100%">
        <tr>
         <td height="22" align="center">&nbsp;&nbsp;<b>����� ���� - �α���</b></td>
        </tr>
       </table>  
       <!-- �α����� ������ ��� exception ��ü�� ����� ���� �޽����� ��� -->
        <c:if test="${loginFailed}">
          <font color="red"><c:out value="${exception.getMessage()}" /></font>
       </c:if>
       <br>     
       <table style="background-color: #353535" align="center">
          <tr height="30">
         <td width="100" align="center" bgcolor="ffffff">���̵�</td>
         <td width="200" bgcolor="ffffff" style="padding-left:10">
            <input type="text" style="width:180" name="userID">
         </td>
        </tr>
          <tr height="30">
         <td width="100" align="center" bgcolor="ffffff">��й�ȣ</td>
         <td width="200" bgcolor="ffffff" style="padding-left:10">
            <input type="password" style="width:180" name="pwd">
         </td>
        </tr>
       </table>
       <br>     
       <table style="width:100%">
        <tr>
         <td align=center>
         <input type="button" value="�α���"  onClick="login()"> &nbsp;
         <input type="button" value="ȸ������" onClick="userCreate('<c:url value='/member/registerMember/form' />')">
         </td>         
        </tr>
       </table>
     </td>
   </tr>
  </table>  
</form>
</body>
</html>