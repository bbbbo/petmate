<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>PetMate_����</title>
<script>
function petCreate() {
   if (form.pet_ID.value == "") {
      alert("pet ID�� �Է��Ͻʽÿ�.");
      form.pet_ID.focus();
      return false;
   } 
   
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
<center>
<h1>PetMate</h1>
</center>
<!-- pet form -->
<form name="form" method="POST" action="<c:url value ='member/register/pet' />">
	<table style="width:100%" align="center">
	<tr>
		<td bgcolor="f4f4f4" height="22" align="center"><b>pet ���</b></td>
    </tr>
    </table>  
	<br>
	<table style="background-color: #FF6CEB" align = 'center'>
    <tr height="30"> 
		<td width="150" align="center" bgcolor="#FFFFFF">pet ���̵� </td>
		<td width="250" bgcolor="#FFFFFF" style="padding-left: 10">
			<input type="text" style="width: 400;" name="pet_ID" /></td>
    </tr>
    <tr height="30"> 
		<td width="150" align="center" bgcolor="#FFFFFF">pet �̸� </td>
		<td width="250" bgcolor="#FFFFFF" style="padding-left: 10">
			<input type="text" style="width: 400;" name="pet_name" /></td>
    </tr>
    <tr height="30"> 
		<td width="150" align="center" bgcolor="#FFFFFF">pet ���� </td>
		<td width="250" bgcolor="#FFFFFF" style="padding-left: 10">
			<input type="text" style="width: 400;" name="pet_age" /></td>
    </tr>
    <tr height="30"> 
		<td width="150" align="center" bgcolor="#FFFFFF">pet ����</td>
		<td width="200" bgcolor="#FFFFFF" style="padding-left: 10" align="center">
			<input type="radio" style="width: 400;" name="pet_gender" value="����" checked="checked"/>����
			<input type="radio" style="width: 400;" name="pet_gender" value="����" />����
		</td>
    </tr>
    </table>
	<br>	  
	<table style="width:100%">
	<tr>
		<td align=center> 
			<input type="button" value="����"  onClick="beforePage('<c:url value='/member/main' />')"> &nbsp;
			<input type="button" value="���" onClick="petCreate()">
		</td>			
	</tr>
	</table>
</form>
</body>
</html>