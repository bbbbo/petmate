<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel=stylesheet href="<c:url value='/css/user.css' />" type="text/css">
<title>PetMate_����</title>
<script>
function petCreate() {
   if (form.pet_name.value == "") {
      alert("pet �̸��� �Է��Ͻʽÿ�.");
      form.pet_name.focus();
      return false;
   }
  
   if (form.pet_age.value == "") {
      alert("pet ���̸� �Է��Ͻʽÿ�.");
      form.pet_age.focus();
      return false;
   }
   
   alert("��ϵǾ����ϴ�!");
   form.submit();
}

function beforePage(targetUri) {
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
<!-- pet form -->
<form name="form" method="POST" action="<c:url value='/member/registerPet' />">
	<table style="width:100%" align="center">
	<tr>
		<td height="22" align="center"><b>My Pet ���</b></td>
    </tr>
    </table>  
	<br>
	<table style="background-color: #353535" align = 'center'>
    <tr height="30"> 
		<td width="150" align="center" bgcolor="#FFFFFF"><b>pet �̸�</b> </td>
		<td width="250" bgcolor="#FFFFFF" style="padding-left: 10">&nbsp;&nbsp;
			<input type="text" style="width: 215px;" name="pet_name" /></td>
    </tr>
    <tr height="30"> 
		<td width="150" align="center" bgcolor="#FFFFFF"><b>pet ����</b> </td>
		<td width="250" bgcolor="#FFFFFF" style="padding-left: 10">&nbsp;&nbsp;
			<input type="text" style="width: 215px;" name="pet_age" /></td>
    </tr>
    <tr height="30"> 
		<td width="150" align="center" bgcolor="#FFFFFF"><b>pet ����</b></td>
		<td width="200" bgcolor="#FFFFFF" style="padding-left: 10" align="center">
			<input type="radio" name="pet_gender" value="��" checked="checked"/>��
			<input type="radio" name="pet_gender" value="��" />��
		</td>
    </tr>
    <tr height="30">
    	<td width="150" align="center" bgcolor="#FFFFFF"><b>pet ����</b></td>
    	<td width="200" bgcolor="#FFFFFF" style="padding-left: 10" align="center">
    		<select name="kind_ID">
    			<option value="k1">������</option>
    			<option value="k2">�����</option>
    			<option value="k3">����ġ</option>
    			<option value="k4">�����</option>
    			<option value="k5">�䳢</option>
    			<option value="k6">��</option>
    			<option value="k7">�ܽ���</option>
    		</select>
    	</td>
    </tr>
    </table>
	<br>	  
	<table style="width:100%">
	<tr>
		<td align=center> 
			<input type="button" value="����"  onClick="beforePage('<c:url value='/main/form' />')"> &nbsp;
			<input type="button" value="���" onClick="petCreate()">
		</td>			
	</tr>
	</table>
</form>
</body>
</html>