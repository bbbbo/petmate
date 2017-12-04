<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel=stylesheet href="<c:url value='/css/user.css' />" type="text/css">
<title>PetMate_펫등록</title>
<script>
function petCreate() {
   if (form.pet_name.value == "") {
      alert("pet 이름을 입력하십시오.");
      form.pet_name.focus();
      return false;
   }
  
   if (form.pet_age.value == "") {
      alert("pet 나이를 입력하십시오.");
      form.pet_age.focus();
      return false;
   }
   
   alert("등록되었습니다!");
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
		<td height="22" align="center"><b>My Pet 등록</b></td>
    </tr>
    </table>  
	<br>
	<table style="background-color: #353535" align = 'center'>
    <tr height="30"> 
		<td width="150" align="center" bgcolor="#FFFFFF"><b>pet 이름</b> </td>
		<td width="250" bgcolor="#FFFFFF" style="padding-left: 10">&nbsp;&nbsp;
			<input type="text" style="width: 215px;" name="pet_name" /></td>
    </tr>
    <tr height="30"> 
		<td width="150" align="center" bgcolor="#FFFFFF"><b>pet 나이</b> </td>
		<td width="250" bgcolor="#FFFFFF" style="padding-left: 10">&nbsp;&nbsp;
			<input type="text" style="width: 215px;" name="pet_age" /></td>
    </tr>
    <tr height="30"> 
		<td width="150" align="center" bgcolor="#FFFFFF"><b>pet 성별</b></td>
		<td width="200" bgcolor="#FFFFFF" style="padding-left: 10" align="center">
			<input type="radio" name="pet_gender" value="남" checked="checked"/>남
			<input type="radio" name="pet_gender" value="여" />여
		</td>
    </tr>
    <tr height="30">
    	<td width="150" align="center" bgcolor="#FFFFFF"><b>pet 종류</b></td>
    	<td width="200" bgcolor="#FFFFFF" style="padding-left: 10" align="center">
    		<select name="kind_ID">
    			<option value="k1">강아지</option>
    			<option value="k2">고양이</option>
    			<option value="k3">고슴도치</option>
    			<option value="k4">파충류</option>
    			<option value="k5">토끼</option>
    			<option value="k6">새</option>
    			<option value="k7">햄스터</option>
    		</select>
    	</td>
    </tr>
    </table>
	<br>	  
	<table style="width:100%">
	<tr>
		<td align=center> 
			<input type="button" value="이전"  onClick="beforePage('<c:url value='/main/form' />')"> &nbsp;
			<input type="button" value="등록" onClick="petCreate()">
		</td>			
	</tr>
	</table>
</form>
</body>
</html>