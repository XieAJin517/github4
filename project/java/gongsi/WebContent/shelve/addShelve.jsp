<%@page pageEncoding="GBK" contentType="text/html; charset=GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="bean.*,java.util.List" %>
<html>
<head>
    <title>Ìí¼Ó»õ¼ÜÐÅÏ¢</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>

<body>
<p align="center"> ÒªÌí¼ÓµÄ»õ¼ÜÐÅÏ¢ÈçÏÂ£º   
<form name="addshelve_Form" action="/MISExampleForJSP/CheckShelveServlet?operator=add" method="post" >
    <table align="center">
       <tr><td><font face="ºÚÌå">¸ñ×ÓÊý£º</font></td> 
      	 <td><input type="text" name="lattice" value=""></td>
       </tr>
        <tr><td><font face="ºÚÌå">ËùÊô²Ö¿â£º</font></td> 
      	 <td> <select name="whid">
       		<c:forEach var="item" items="${warehoses}" varStatus="warehose"> 
      			<option value="${item.id}">${item.name}</option>
      		</c:forEach> 
       </select></td>
       </tr>
       
        <tr><td><font face="ºÚÌå">»õ¼Ü×´Ì¬£¨0£ºÓÐ¿Õ£¬1£ºÂú£©£º</font></td> 
      	 <td><input type="text" name="state" value=""></td>
       </tr>
        <tr><td><font face="ºÚÌå">»õ¼Ü¹æ¸ñ£º</font></td> 
      	 <td><input type="text" name="specification" value=""></td>
       </tr>
       <tr>
		<td><input type="submit" name="sub" value="È·¶¨"></td>
		<td><input type="reset" name="res" value="ÖØÌî"></td>
		</tr>
    </table>
    </form>
     <%
     Object message = request.getAttribute("message");
     if(message!=null && !"".equals(message)){
 
  %>
      <script type="text/javascript">
          alert("<%=message%>");
      </script>
  <%} %>
</body>
</html>