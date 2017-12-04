<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>PetMate_입양 정보 등록 페이지</title>
<script>
function addAdopt() {
	if(form.adopt_price.value == "") {
		alert("가격을 입력하십시오.");
		form.adopt_price.focus();
		return false;
	}
	
	if(form.adopt_age.value == "") {
		alert("가격을 입력하십시오.");
		form.adopt_price.focus();
		return false;
	}
	
	 alert("등록되었습니다!");
	 form.submit();
}
</script>
</head>
<body>
<br>
<table align="center">
<tr> 
	<td><h1><font color=#FF5E00 size="24px">PetMate</font></h1></td> 
	<td>&nbsp;<img src="<c:url value='/images/chat_caticon.png' />">
</tr>
</table>
<form name = "form" method = "post" action ="<c:url value='/adopt/registerAdopt'/>"> 
<!-- AddAdopt form  -->
   
  <table style="width:100%">
   <tr>
     <td width="20"></td>
       <table style="width:100%">
        <tr>
         <td height="22" align="center"><b>입양/분양 정보 등록하기</b></td>
        </tr>
       </table><br>
       <table style="background-color: #353535" align = 'center'>
         <tr height="30">
         <td width="200" align="center" bgcolor="#FFFFFF" align = "center"><b>pet 가격</b></td>
         <td width = "200" align = "center" bgcolor = "#FFFFFF">
         <input type="text" style="width:240" name="adopt_price">
         </td>
        </tr>
         <tr height="30">
         <td width="200" align="center" bgcolor="#FFFFFF" align = "center"><b>pet 나이</b></td>
         <td width = "200" align = "center" bgcolor = "#FFFFFF">
         <input type="text" style="width:240" name="adopt_age">
         </td>
        </tr>
        <tr height="30"> 
        <td width="200" align="center" bgcolor="#FFFFFF"><b>pet 종류</b></td> 
        <td width="200" bgcolor="#FFFFFF" style="padding-left: 10" align="center"> 
   		<select name="adopt_kind"> 
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
       <tr height="30">
      <td width="200" align="center" bgcolor="#FFFFFF"><b>pet 성별</b></td>
        <td width = "200" align = "center" bgcolor = "#FFFFFF">
          <input type="radio" name="adopt_gender" value="남" checked="checked"/>남
		<input type="radio" name="adopt_gender" value="여" />여
      </td>
      </tr>
      </table>
    <br>   
       <table align = "center">
          <tr><td> <input type ="button" onClick="addAdopt()" value = "글쓰기" /></td></tr>
       </table>
   </tr>
  </table>  
  </form>
</body>
</html>