<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*"%>
<%@ page import="model.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
   List<AdoptDTO> adoptList = (List<AdoptDTO>)request.getAttribute("adoptList");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>PetMate_입양/분양 리스트</title>
</head>
<body bgcolor=#FFFFFF text=#000000 leftmargin=0 topmargin=0 marginwidth=0 marginheight=0>
<br>
<center>
<h1>PetMate</h1>
</center>
<!-- listAdopt form  -->
   <form name = "f" method = "post" action = "/member/AddAdopt.jsp">
  <table style="width:100%">
  <center>
   <tr>
     <td width="20"></td>
     <td>
       <table style="width:100%">
        <tr>
         <td bgcolor="f4f4f4" height="22" align="center"><b>입양/분양 리스트</b></td>
        </tr>
       </table>  
       <br>     
       <table style="background-color: #FF6CEB" align = 'center'>
         <tr height="30">
         <td width="500" align="center" bgcolor="#FFFFFF" align = "center"><b>사용자 아이디</b></td>
         <td width = "510" align = "center" bgcolor = "#FFFFFF"><b>펫 종류</b></td> 
        </tr>
        
  <%
        if(adoptList != null){
            Iterator<AdoptDTO> adoptIter = adoptList.iterator();
            
            while(adoptIter.hasNext()){
               AdoptDTO adopt = (AdoptDTO)adoptIter.next();
  %>
        <tr>
        <td = width = "500" align = "center" bgcolor = "ffffff">
           <a href = "<c:url value='/member/adopt/viewAdopt'>
                 <c:param name='adoptId' value ='<%=adopt.getAdopt_ID()%>'/>
                 </c:url>">
           <%= adopt.getUserID() %>
           </a>
        </td>
         <td = width = "510" align = "center" bgcolor = "ffffff"><%=adopt.getAdopt_kind() %>
         </td>
         </tr>
    <%
              }
        }
    %>
        </table>
       <br>   
       <table>
          <tr><td align = "right"> <input type = "button" value = "글쓰기"/></td></tr>
       </table>
     </td>
   </tr>
   </center>
  </table>  
</form>
</body>
</html>