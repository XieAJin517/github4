<%@page pageEncoding="GBK" contentType="text/html; charset=GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="bean.*,java.util.List" %>
<html>
<head>
    <title>添加货架信息</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>

<body>
<p align="center"> 要添加的货架信息如下：   
<form name="addshelve_Form" action="/MISExampleForJSP/CheckShelveServlet?operator=add" method="post" >
    <table align="center">
       <tr><td><font face="黑体">格子数：</font></td> 
      	 <td><input type="text" name="lattice" value=""></td>
       </tr>
        <tr><td><font face="黑体">所属仓库：</font></td> 
      	 <td> <select name="whid">
       		<c:forEach var="item" items="${warehoses}" varStatus="warehose"> 
      			<option value="${item.id}">${item.name}</option>
      		</c:forEach> 
       </select></td>
       </tr>
       
        <tr><td><font face="黑体">货架状态（0：有空，1：满）：</font></td> 
      	 <td><input type="text" name="state" value=""></td>
       </tr>
        <tr><td><font face="黑体">货架规格：</font></td> 
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