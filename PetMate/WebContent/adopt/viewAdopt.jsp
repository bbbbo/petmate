<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*"%>
<%@ page import="model.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
      AdoptDTO adopt = (AdoptDTO)request.getAttribute("adopt");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>PetMate_입양/분양 정보 페이지</title>
</head>
<body bgcolor = #FFFFFF>
<br>
<table align="center">
<tr> 
   <td><h1><font color=#FF5E00 size="24px">PetMate</font></h1></td> 
   <td>&nbsp;<img src="<c:url value='/images/chat_caticon.png' />">
</tr>
</table>
<br>
 <table style="width:100%">
   <tr>
   <td height="22" align="center">&nbsp;&nbsp;<b>입양/분양 상세 페이지</b></td>
   </tr>
</table>
<br>
<form name = "f" method = "get" action = "<c:url value='/member/registerAdopt/form'/>">
<table style="background-color: #353535" align="center">
   <tr height="30">
        <td width="150" align="center" bgcolor="#FFFFFF"><b>사용자아이디</b></td>
        <td width="150" bgcolor="ffffff" style="padding-left:10">
        &nbsp;<%= adopt.getUserID() %></td>
      </tr>
      <tr height="30">
        <td width="150" align="center" bgcolor="#FFFFFF"><b>pet 나이</b></td>
        <td width="150" bgcolor="ffffff" style="padding-left:10">
            &nbsp;<%= adopt.getAdopt_age() %></td>
      </tr>
    <tr height="30">
        <td width="150" align="center" bgcolor="#FFFFFF"><b>pet 종류</b></td>
        <td width="150" bgcolor="ffffff" style="padding-left:10">
            &nbsp;<%= adopt.getAdopt_kind() %></td>
      </tr>
      <tr height="30">
       <td width="150" align="center" bgcolor="#FFFFFF"><b>pet 성별</b></td>
       <td width="150" bgcolor="ffffff" style="padding-left:10">
            &nbsp;<%= adopt.getAdopt_gender() %> </td>
      </tr>
      <tr height="30">
        <td width="150" align="center" bgcolor="#FFFFFF"><b>가격</b></td>
        <td width="150" bgcolor="ffffff" style="padding-left:10">
            &nbsp;<%= adopt.getAdopt_price() %></td>
      </tr>
</table>
<br>
<center>
<!--  <input type = "button" value="목록" onClick="<c:url value='/adopt/listAdopt/form' />"/> -->
<input type = "submit" value="목록" />
</center>
</form>
</body>
</html>