<%@page pageEncoding="GBK" contentType="text/html; charset=GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="bean.*,java.util.List" %>
<html>
<head>
    <title>Ìí¼Ó¸ñ×ÓÐÅÏ¢</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>

<body>
<p align="center"> ÒªÌí¼ÓµÄ¸ñ×ÓÐÅÏ¢ÈçÏÂ£º   
<form name="addlattice_Form" action="/MISExampleForJSP/CheckLatticeServlet?operator=add" method="post" >
    <table align="center">
        <tr><td><font face="ºÚÌå">ËùÊô»õ¼Ü£º</font></td> 
      	 <td> <select name="sheid">
       		<c:forEach var="item" items="${shelves}" varStatus="shelve"> 
      			<option value="${item.sheid}">${item.sheid}</option>
      		</c:forEach> 
       </select></td>
       </tr>
       
        <tr><td><font face="ºÚÌå">¸ñ×Ó×´Ì¬£¨0£ºÓÐ¿Õ£¬1£ºÂú£©£º</font></td> 
      	 <td><input type="text" name="state" value=""></td>
       </tr>
        <tr><td><font face="ºÚÌå">¸ñ×Ó¹æ¸ñ£º</font></td> 
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