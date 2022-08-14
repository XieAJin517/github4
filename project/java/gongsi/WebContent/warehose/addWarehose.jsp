<%@page pageEncoding="GBK" contentType="text/html; charset=GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="bean.*,java.util.List" %>
<html>
<head>
    <title>Ìí¼ÓÊéÎ»ÐÅÏ¢</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>

<body>
<p align="center"> ÒªÌí¼ÓµÄÊéÎ»ÐÅÏ¢ÈçÏÂ£º   
<form name="addwarehose_Form" action="/MISExampleForJSP/CheckWarehoseServlet?operator=add" method="post" >
    <table align="center">
       <tr><td><font face="ºÚÌå">ÊéÎ»Ãû³Æ£º</font></td> 
      	 <td><input type="text" name="name" value=""></td>
       </tr>
        <tr><td><font face="ºÚÌå">ÊéÎ»Î»ÖÃ£º</font></td> 
      	 <td><input type="text" name="position" value=""></td>
       </tr>
        <tr><td><font face="ºÚÌå">ÈÝÄÉ»õ¼ÜÊý£º</font></td> 
      	 <td><input type="text" name="shelves_total" value=""></td>
       </tr>
        <tr><td><font face="ºÚÌå">ÊéÎ»×´Ì¬£¨0£ºÓÐ¿Õ£¬1£ºÂú£©£º</font></td> 
      	 <td><input type="text" name="state" value=""></td>
       </tr>
        <tr><td><font face="ºÚÌå">ÊéÎ»¹æ¸ñ£º</font></td> 
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