<%@page pageEncoding="GBK" contentType="text/html; charset=GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="bean.*,java.util.List" %>
<html>
<head>
    <title>添加书位信息</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>

<body>
<p align="center"> 要添加的书位信息如下：   
<form name="addwarehose_Form" action="/MISExampleForJSP/CheckWarehoseServlet?operator=add" method="post" >
    <table align="center">
       <tr><td><font face="黑体">书位名称：</font></td> 
      	 <td><input type="text" name="name" value=""></td>
       </tr>
        <tr><td><font face="黑体">书位位置：</font></td> 
      	 <td><input type="text" name="position" value=""></td>
       </tr>
        <tr><td><font face="黑体">容纳货架数：</font></td> 
      	 <td><input type="text" name="shelves_total" value=""></td>
       </tr>
        <tr><td><font face="黑体">书位状态（0：有空，1：满）：</font></td> 
      	 <td><input type="text" name="state" value=""></td>
       </tr>
        <tr><td><font face="黑体">书位规格：</font></td> 
      	 <td><input type="text" name="specification" value=""></td>
       </tr>
       <tr>
		<td><input type="submit" name="sub" value="确定"></td>
		<td><input type="reset" name="res" value="重填"></td>
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