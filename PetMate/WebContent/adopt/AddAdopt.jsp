<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�Ծ� ���� ��� ������</title>
</head>
<body>
<form name = "f" method = "post" action ="<c:url value='/adopt/registerAdopt'/>"> 
<!-- AddAdopt form  -->
   
  <table style="width:100%">
   <tr>
     <td width="20"></td>
       <table style="width:100%">
        <tr>
         <td bgcolor="f4f4f4" height="22" align="center"><b>�Ծ�/�о� ���� ����ϱ�</b></td>
        </tr>
       </table>  
       <table style="background-color: #FF6CEB" align = 'center'>
         <tr height="30">
         <td width="500" align="center" bgcolor="#FFFFFF" align = "center"><b>pet ����</b></td>
         <td width = "510" align = "center" bgcolor = "#FFFFFF">
         <input type="text" style="width:240" name="adopt_price">
         </td>
        </tr>
         <tr height="30">
         <td width="500" align="center" bgcolor="#FFFFFF" align = "center"><b>pet ����</b></td>
         <td width = "510" align = "center" bgcolor = "#FFFFFF">
         <input type="text" style="width:240" name="adopt_age">
         </td>
        </tr>
        <tr height="30"> 
        <td width="500" align="center" bgcolor="#FFFFFF">pet ����</td> 
        <td width="510" bgcolor="#FFFFFF" style="padding-left: 10" align="center"> 
   		<select name="adopt_kind"> 
				<option value="k1">������</option> 
				<option value="k2">�����</option> 
				<option value="k3">����ġ</option>
				<option value="k4">�����</option>
				<option value="k5">�䳢</option>
				<option value="k6">��</option>
				<option value="k7">�ܽ���</option>
		</select> 
  	</td>
  	</tr> 
       <tr height="30">
      <td width="500" align="center" bgcolor="#FFFFFF"><b>pet ����</b></td>
        <td width = "510" align = "center" bgcolor = "#FFFFFF">
           <input type="text" style="width:240" name="adopt_gender">
      </td>
    </tr>
          <tr><td align = "right"> <input type = "submit" value = "�Ϸ�"/></td></tr>
       </table>
   </tr>
  </table>  
  </form>
</body>
</html>