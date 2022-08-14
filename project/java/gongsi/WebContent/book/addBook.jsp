<%@page pageEncoding="GBK" contentType="text/html; charset=GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="bean.*,java.util.List" %>
<html>
<head>
    <title>添加商品信息</title>
</head>

<body>
<p align="center"> 要添加的商品信息如下：   
    <form name="addproduct_Form" action="/MISExampleForJSP/CheckProductServlet?operator=add" method="post" >
    <table align="center">
       <tr><td><font face="黑体">商品类别：</font></td>
        <td>
       <select name="kindID">
       		<c:forEach var="item" items="${categorys}" varStatus="category"> 
      			<option value="${item.kindID}">${item.kindName}</option>
      		</c:forEach> 
       </select>
       </td>   
       </tr> 

       <tr><td><font face="黑体">商品名称：</font></td> 
       <td><input type="text" name="proName" value=""></td>
       </tr>
       <tr><td><font face="黑体">商品价格：</font></td> 
       <td><input type="text" name="price" value=""></td>
       </tr>
       <tr><td><font face="黑体">库存数量：</font></td> 
       <td><input type="text"  name="wareNum" value=""></td>
       </tr>  
       <tr><td><font face="黑体">商品图片：</font></td> 
       <td><input type="text"  name="proImage" value=""></td>
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
