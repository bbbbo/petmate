<%@page contentType="text/html; charset=euc-kr" %>
<%@page import="model.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	 user = (MemberDTO)request.getAttribute("user");
%>
<html>
<head>
<title>사용자 관리</title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<link rel=stylesheet href="<c:url value='/css/user.css' />" type="text/css">
<script>
function userModify() {
	if (form.password.value == "") {
		alert("비밀번호를 입력하십시오.");
		form.password.focus();
		return false;
	}
	if (form.password.value != form.password2.value) {
		alert("비밀번호가 일치하지 않습니다.");
		form.name.focus();
		return false;
	}
	if (form.name.value == "") {
		alert("이름을 입력하십시오.");
		form.name.focus();
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
<!-- Update Form  -->
<form name="form" method="POST" action="<c:url value='/user/update' />">
  <input type="hidden" name="userId" value="<%=user.getUserID()%>"/>	  
  <table style="width: 100%">
	<tr>
	  <td width="20"></td>
	  <td>
	    <table style="width: 100%">
		  <tr>
			<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b>사용자 관리 - 사용자 수정</b></td>
		  </tr>
	    </table>  
	    <br>	  
	    <table style="background-color: YellowGreen">
	  	  <tr height="40">
			<td width="150" align="center" bgcolor="E6ECDE">사용자 ID</td>
			<td width="250" bgcolor="ffffff" style="padding-left: 10">
				<%= user.getUserID() %>
			</td>
		  </tr>
		  <tr height="40">
			<td width="150" align="center" bgcolor="E6ECDE">비밀번호</td>
			<td width="250" bgcolor="ffffff" style="padding-left: 10">
				<input type="password" style="width: 240" name="password" value="<%=user.getPwd()%>">
			</td>
		  </tr>
		  <tr height="40">
			<td width="150" align="center" bgcolor="E6ECDE">비밀번호 확인</td>
			<td width="250" bgcolor="ffffff" style="padding-left: 10">
				<input type="password" style="width: 240" name="password2" value="<%=user.getPwd()%>">
			</td>
		  </tr>
		  <tr height="40">
			<td width="150" align="center" bgcolor="E6ECDE">이름</td>
			<td width="250" bgcolor="ffffff" style="padding-left: 10">
				<input type="text" style="width: 240" name="name" value="<%=user.getName()%>">
			</td>
		  </tr>
		  <tr height="40">
			<td width="150" align="center" bgcolor="E6ECDE">지역</td>
			<td width="250" bgcolor="ffffff" style="padding-left: 10">
				<input type="text" style="width: 240" name="email" value="${user.region}">
			</td>  
	    </table>
	    <br>	  
	    <table style="width: 100%">
		  <tr>
			<td align="left">
			<input type="button" value="수정" onClick="userModify()"> &nbsp;
			<input type="button" value="목록" onClick="userList('<c:url value='/user/list' />')">
			</td>
		  </tr>
	    </table>
	  </td>
	</tr>
  </table>  
</form>
</body>
</html>