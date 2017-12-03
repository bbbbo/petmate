<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>PetMate_Main</title>
</head>
<body bgcolor=#FFFFFF text=#000000 leftmargin=0 topmargin=0 marginwidth=0 marginheight=0>
<br>
<center>
<h1>PetMate</h1>
</center>
<!-- login form  -->
<form name="form" method="POST" action="<c:url value='/member/register/form' />">
  <table style="width:100%">
  <center>
   <tr>
     <td width="20"></td>
     <td>
       <table style="width:100%">
        <tr>
         <td bgcolor="f4f4f4" height="22" align="center"><b>메뉴</b></td>
        </tr>
       </table>  
       <br>     
       <table style="background-color: #FF6CEB" align = 'center'>
         <tr height="30">
         <td width="500" align="center" bgcolor="#FFFFFF">
         	<a href="<c:url value='/member/register/pet'></c:url>">펫 등록</a></td>
        </tr>
          <tr height="30">
         <td width="500" align="center" bgcolor="#FFFFFF">
         	<a href="<c:url value='/member/register/adopt'></c:url>">입양</a></td>
        </tr>
         <tr height="30">
         <td width="500" align="center" bgcolor="#FFFFFF">
         <a href="<c:url value='/member/register/hospital'></c:url>">병원</a></td>
        </tr>
         <tr height="30">
         <td width="500" align="center" bgcolor="#FFFFFF">
         	<a href="<c:url value='/member/register/sell'></c:url>">물품 거래</a></td>
        </tr>
         <tr height="30">
         <td width="500" align="center" bgcolor="#FFFFFF"><a href="<c:url value='/member/register/festival'></c:url>">축제</a></td>
        </tr>
       </table>
       <br>     
    
     </td>
   </tr>
   </center>
  </table>  
</form>
</body>
</html>