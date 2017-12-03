<%@page contentType="text/html; charset=euc-kr" %>
<%@page import="model.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	User user = (User)request.getAttribute("user");
%>
<html>
<head>
<title>����� ����</title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<link rel=stylesheet href="<c:url value='/css/user.css' />" type="text/css">
<script>
function userRemove() {
	return confirm("���� �����Ͻðڽ��ϱ�?");		
}
</script>
</head>
<body bgcolor=#FFFFFF text=#000000 leftmargin=0 topmargin=0 marginwidth=0 marginheight=0>
  <br>
  <table style="width: 100%">
    <tr>
	  <td width="20"></td>
	  <td>
	    <table style="width: 100%">
		  <tr>
			<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b>����� ���� - ����� ��������</b></td>
		  </tr>
	    </table>  
	    <br>	  	    
	  	<table style="background-color: YellowGreen">
	  	  <tr>
			<td width="120" align="center" bgcolor="E6ECDE" height="22">����� ID</td>
			<td width="470" bgcolor="ffffff" style="padding-left: 10">
				<%=user.getUserId()%>
			</td>
		  </tr>
		  <tr>
			<td width="120" align="center" bgcolor="E6ECDE" height="22">�̸�</td>
			<td width="470" bgcolor="ffffff" style="padding-left: 10">
				<%=user.getName()%>
			</td>
		  </tr>
		  <tr>
			<td width="120" align="center" bgcolor="E6ECDE" height="22">�̸��� �ּ�</td>
			<td width="470" bgcolor="ffffff" style="padding-left: 10">
				${user.email} <%-- <%=user.getEmail()%> --%>
			</td>
		  </tr>		  
		  <tr>
			<td width="120" align="center" bgcolor="E6ECDE" height="22">��ȭ��ȣ</td>
			<td width="470" bgcolor="ffffff" style="padding-left: 10">
				${user.phone}<%-- <%=user.getPhone()%> --%>
			</td>
		  </tr>	
	 	</table>
	    <br>
	    <a href="<c:url value='/user/update/form'>
	     		   <c:param name='userId' value='<%=user.getUserId()%>'/>
			 	 </c:url>">����</a> &nbsp;
 	    <a href="<c:url value='/user/delete'>
				   <c:param name='userId' value='<%=user.getUserId()%>'/>
			 	 </c:url>" onclick="return userRemove();">����</a> &nbsp;
 	    <a href="<c:url value='/user/list' />">���</a> 	    
 	    <br><br>	   
 	    
 	    <!-- ������ ������ ��� exception ��ü�� ����� ���� �޽����� ��� -->
        <c:if test="${updateFailed}">
	      <font color="red"><c:out value="${exception.getMessage()}" /></font>
	    </c:if>    
	  </td>
	</tr>
  </table>  
</body>
</html>