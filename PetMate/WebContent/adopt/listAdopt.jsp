<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*"%>
<%@ page import="model.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	@SuppressWarnings("unchecked") 
   	List<AdoptDTO> adoptList = (List<AdoptDTO>)request.getAttribute("adoptList");
	String curUserId = (String)request.getAttribute("curUserId");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>PetMate_�Ծ�/�о� ����Ʈ</title>
</head>
<body bgcolor=#FFFFFF text=#000000 leftmargin=0 topmargin=0 marginwidth=0 marginheight=0>
<br>
<table align="center">
<tr> 
	<td><h1><font color=#FF5E00 size="24px">PetMate</font></h1></td> 
	<td>&nbsp;<img src="<c:url value='/images/chat_caticon.png' />">
</tr>
</table>
<!-- listAdopt form  -->
<form name = "f" method = "post" action = "/member/AddAdopt.jsp">
  <table style="width:100%" align="center">
   <tr>
     <td width="20"></td>
     <td>
       <table style="width:100%">
        <tr>
         <td height="22" align="center"><b>�Ծ�/�о� ����Ʈ</b></td>
        </tr>
       </table>  
       <br>     
       <table style="background-color:#353535" align = 'center'>
         <tr height="30">
         <td width="200" align="center" bgcolor="#FFFFFF" align = "center"><b>����� ���̵�</b></td>
         <td width = "200" align = "center" bgcolor = "#FFFFFF"><b>�� ����</b></td> 
        </tr>
        
  <%
        if(adoptList != null){
            Iterator<AdoptDTO> adoptIter = adoptList.iterator();
            
            while(adoptIter.hasNext()){
               AdoptDTO adopt = (AdoptDTO)adoptIter.next();
               System.out.println(adopt.getUserID() + " : " + adopt.getAdopt_ID());
               String adopt_Id = String.valueOf(adopt.getAdopt_ID());
  %>
        <tr> <!-- ����� ID Ŭ���� �󼼺���  -->
        <td width ="200" align = "center" bgcolor = "ffffff">
           <a href = "<c:url value='/adopt/viewAdopt'>
                 <c:param name='adoptId' value ='<%= adopt_Id %>'/>
                 <c:param name='userId' value ='<%= adopt.getUserID() %>' />
                 </c:url>">
           <%= adopt.getUserID() %>
           </a>
        </td>
         <td width ="200" align = "center" bgcolor = "ffffff"><%= adopt.getAdopt_kind() %>
         </td>
         </tr>
    <%
              }
        }
    %>
        </table>
       <br>   
       <table align = "center">
       <!-- onClick �Ծ� �۾��� (addAdopt) �����ϱ� -->
          <tr><td> <input type = "button" value = "�۾���" /></td></tr>
       </table>
     </td>
   </tr>
  </table>  
</form>
</body>
</html>