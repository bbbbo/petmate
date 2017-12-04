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
<title>PetMate_�Ծ�/�о� ����������</title>
<script>
function adoptRemove() {
	return confirm("���� �����Ͻðڽ��ϱ�?");		
}
</script>
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
   <td height="22" align="center">&nbsp;&nbsp;<b>�Ծ�/�о� ����������</b></td>
   </tr>
</table>
<br>
<form name="form" method="POST" action = "<c:url value='/member/registerAdopt/form'/>">
<table style="background-color: #353535" align="center">
   <tr height="30">
        <td width="150" align="center" bgcolor="#FFFFFF"><b>����ھ��̵�</b></td>
        <td width="150" bgcolor="ffffff" style="padding-left:10">
        &nbsp;<%= adopt.getUserID() %></td>
      </tr>
      <tr height="30">
        <td width="150" align="center" bgcolor="#FFFFFF"><b>pet ����</b></td>
        <td width="150" bgcolor="ffffff" style="padding-left:10">
            &nbsp;<%= adopt.getAdopt_age() %></td>
      </tr>
    <tr height="30">
        <td width="150" align="center" bgcolor="#FFFFFF"><b>pet ����</b></td>
        <td width="150" bgcolor="ffffff" style="padding-left:10">
             <c:set var="kind" value="<%=adopt.getAdopt_kind() %>"/>
        <c:choose>
           <c:when test="${kind == 'k1'}"> 
           		������
           </c:when>
           <c:when test="${kind == 'k2'}"> 
        		  �����
           </c:when>
           <c:when test="${kind == 'k3'}"> 
           		����ġ
             </c:when>
             <c:when test="${kind == 'k4'}"> 
           		�����
           </c:when>
             <c:when test="${kind == 'k5'}"> 
          		 �䳢
           </c:when>
             <c:when test="${kind == 'k6'}"> 
         		  ��
           </c:when>
             <c:when test="${kind == 'k7'}"> 
           		�ܽ���
           </c:when>
        </c:choose>
      </tr>
      <tr height="30">
       <td width="150" align="center" bgcolor="#FFFFFF"><b>pet ����</b></td>
       <td width="150" bgcolor="ffffff" style="padding-left:10">
            &nbsp;<%= adopt.getAdopt_gender() %> </td>
      </tr>
      <tr height="30">
        <td width="150" align="center" bgcolor="#FFFFFF"><b>����</b></td>
        <td width="150" bgcolor="ffffff" style="padding-left:10">
            &nbsp;<%= adopt.getAdopt_price() %></td>
      </tr>
</table>
<br>
<center>
	<a href="<c:url value='/adopt/updateAdoptForm'>
	 	<c:param name='adoptId' value ='<%= String.valueOf(adopt.getAdopt_ID()) %>'/>
     	<c:param name='userId' value ='<%= adopt.getUserID() %>' />
     </c:url>">����</a> &nbsp;
     <a href="<c:url value='/adopt/deleteAdopt'>
	 	<c:param name='adoptId' value ='<%= String.valueOf(adopt.getAdopt_ID()) %>'/>
     	<c:param name='userId' value ='<%= adopt.getUserID() %>' />
     </c:url>" onclick="return adoptRemove();">����</a> &nbsp;
<input type = "submit" value="���" />
</center>
</form>
</body>
</html>