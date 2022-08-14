<%@page pageEncoding="GBK" contentType="text/html; charset=GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="bean.*,java.util.List" %>
<html>
<head>
    <title>添加库存信息</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>

<body>
<p align="center"> 要添加的库存信息如下：   
<form name="addwarenum_Form" action="/MISExampleForJSP/CheckWarenumServlet?operator=add" method="post" >
    <table align="center">
       
        <tr><td><font face="黑体">商品名：</font></td> 
      	<td><select name="name">
      	 		<option>请选择商品名</option>
       				<c:forEach var="item" items="${products}" varStatus="product"> 
      					<option value="${item.proName}">${item.proName}</option>
      				</c:forEach> 
       		</select></td>
       </tr>
        <tr><td><font face="黑体">格子编号：</font></td> 
      	 <td><input type="text" name="latid" value=""></td>
       </tr>
        <tr><td><font face="黑体">库存数量：</font></td> 
      	 <td><input type="text" name="warenum" value=""></td>
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