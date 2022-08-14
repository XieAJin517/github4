<%@page pageEncoding="GBK" contentType="text/html; charset=GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="bean.Product,java.util.List" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>¹ºÂòÉÌÆ·</title>
</head>
<body>
<%
String proID = request.getParameter("proID");
String proImage = request.getParameter("proImage");
String pName = request.getParameter("proName");
String price = request.getParameter("price");
String wareNum = request.getParameter("wareNum");

byte bb[]=pName.getBytes("iso-8859-1");
String proName=new String(bb);

%>
  <div>
    <img src="<%=proImage%>"  alt="ÎÞÍ¼Æ¬" width="300" height="300">
    <div>
    <p>ÉÌÆ·Ãû³Æ£º<%=proName%>  </p>
    <p>µ¥¼Û£º<%=price%></p>
    <p>¿â´æÊýÁ¿£º<%=wareNum%></p>
     <tr><td><font face="ºÚÌå">¹ºÂòÊýÁ¿£º</font></td> 
       <td><input type="text" name="buyNum" value=""></td>
     </tr>    
    </div>
  </div>
<p></p>

<tr align="center">
<td>
<input type=button name="buynowbut" value="Á¢¼´¹ºÂò" onclick="window.location.href('/MISExampleForJSP/BuyProductServlet?operator=buyNow&&proID=<%=proID%>')">
</td>
<td>
<input type=button name="cartbut" value="¼ÓÈë¹ºÎï³µ" onclick="window.location.href('/MISExampleForJSP/BuyProductServlet?operator=cart&&proID=<%=proID%>')">
</td>
</tr> 

</body>
</html>