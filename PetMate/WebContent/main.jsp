<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>PetMate_Main</title>
</head> <!-- background="<c:url value='/images/intro_img.png'/>" -->
<body bgcolor=#FFFFFF text=#000000 leftmargin=0 topmargin=0 marginwidth=0 marginheight=0>
<br>
<center>
<h1><font color=#FF5E00 size="24px">PetMate</font></h1>
</center>
<form name="Mainform">
  <table style="width:100%">
  <center>
   <tr>
     <td width="20"></td>
     <td>
       <table style="width:100%">
        <tr>
         <td height="22" align="center"><b>메뉴</b></td>
        </tr>
       </table>  
       <br>     
       <table style="background-color: #353535" align = 'center' >
          <tr height="30">
         <td width="300" align="center" bgcolor="#FFFFFF"><a href="<c:url value='/member/registerPet/form'/>">
         	<b>펫 등록</b></a></td>
        </tr>
          <tr height="30">
         <td width="00" align="center" bgcolor="#FFFFFF"><a href="<c:url value='/member/registerAdopt/form' />">
         	<b>입양</b></a></td>
        </tr>
         <tr height="30">
         <td width="300" align="center" bgcolor="#FFFFFF"><a href="<c:url value='/member/registerHospital/form' />">
         	<b>병원</b></a></td>
        </tr>
         <tr height="30">
         <td width="300" align="center" bgcolor="#FFFFFF"><a href="<c:url value='/member/registerSell/form' />">
         	<b>물품 거래</b></a></td>
        </tr>
         <tr height="30">
         <td width="300" align="center" bgcolor="#FFFFFF"><a href="<c:url value='/member/registerFestival/form' />">
         	<b>축제</b></a></td>
        </tr>
       </table>
       <br>     
    
     </td>
   </center>
  </table>  
</form>
</body>
</html>
