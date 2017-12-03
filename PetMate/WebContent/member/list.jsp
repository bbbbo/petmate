<%@page contentType="text/html; charset=euc-kr" %>
<%@page import="java.util.*" %>
<%@page import="model.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	@SuppressWarnings("unchecked") 
	List<MemberDTO> userList = (List<MemberDTO>)request.getAttribute("userList");
	String curUserId = (String)request.getAttribute("curUserId");
%>
<html>
<head>
<title>PetMate_����� ����</title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<link rel=stylesheet href="<c:url value='/css/user.css' />" type="text/css">
</head>
<body bgcolor=#FFFFFF text=#000000 leftmargin=0 topmargin=0 marginwidth=0 marginheight=0>
<br>
<table style="width: 100%">
  <tr>
  	<td width="20"></td>
    <td><a href="<c:url value='/member/logout' />">�α׾ƿ�(&nbsp;<%=curUserId%>&nbsp;)</a></td>
  </tr>
  <tr><td>&nbsp;</td><td>&nbsp;</td></tr>
  <tr>
	<td width="20"></td>
	<td>
	  <table style="width:100%">
		<tr>
		  <td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b>����� ���� - ����Ʈ</b></td>
		</tr>
	  </table>  
	  <br>		  
	  <table style="background-color: YellowGreen">
		<tr>
		  <td width="190" align="center" bgcolor="E6ECDE" height="22">����� ID</td>
		  <td width="200" align="center" bgcolor="E6ECDE">�̸�</td>
		  <td width="200" align="center" bgcolor="E6ECDE">�̸���</td>
		</tr>
<%
	if (userList != null) {	
	  Iterator<MemberDTO> userIter = userList.iterator();
	
	  //����� ����Ʈ�� Ŭ���̾�Ʈ���� �����ֱ� ���Ͽ� ���.
	  while ( userIter.hasNext() ) {
		  MemberDTO user = (MemberDTO)userIter.next();
%>		  	
		<tr>
		  <td width="190" align="center" bgcolor="ffffff" height="20">
			<%=user.getUserID()%>
		  </td>
		  <td width="200" bgcolor="ffffff" style="padding-left: 10">
			<a href="<c:url value='/member/view'>
					   <c:param name='userId' value='<%=user.getUserID()%>'/>
			 		 </c:url>">
			  <%=user.getName()%></a>
		  </td>
		</tr>
<%
	  }
	}
%>	  	
	  </table>	  	 
	  <br>   
	  <a href="<c:url value='/user/register/form' />">����� �߰�</a>
	</td>
  </tr>
</table>  
</body>
</html>