<%@page pageEncoding="GBK" contentType="text/html; charset=GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function changeCategory() {
	  window.location.href="/MISExampleForJSP/GetProductServlet?getType=productList&operator=delete&kindID="+document.getElementById("kindID").value;
}
function changeProduct() {
	  window.location.href="/MISExampleForJSP/GetProductServlet?getType=oneProduct&operator=delete&proID="+document.getElementById("proID").value+"&kindID="+document.getElementById("kindID").value;
}
</script>
</head>
<body>
<p align="center"> 
<tr><td><font face="黑体">请选择商品类别：</font></td>
       <td>
       <select id="kindID" name="kindID" onchange="changeCategory();">
   		
         	<c:forEach var="item" items="${categorys}" varStatus="category"> 
					<c:if test="${item.kindID==kindID}">
         			<option value="${item.kindID}" selected="selected">${item.kindName}</option>
         			</c:if>
         			<c:if test="${item.kindID!=kindID}">
         			<option value="${item.kindID}">${item.kindName}</option>
         	</c:if>	
         </c:forEach>  
      		
       </select>
       </td> 
</tr> 
<tr><td><font face="黑体">请选择商品名称：</font></td>
       <td>
       <select id="proID" name="proID" onchange="changeProduct();">
     		
         	<c:forEach var="item" items="${products}" varStatus="product"> 
					<c:if test="${item.proID==proID}">
         			<option value="${item.proID}" selected="selected">${item.proName}</option>
         			</c:if>
         			<c:if test="${item.proID!=proID}">
         			<option value="${item.proID}">${item.proName}</option>
         	</c:if>	
         </c:forEach>        		
       </select>
       </td> 
</tr>  
       
     <p align="center"> 要删除的商品信息如下：
    <table align="center">       
        <tr><td>类别名称：</td><td>${product.kindName}</td></tr>
      	<tr><td>商品编号：</td><td>${product.proID}</td></tr>
        <tr><td>商品名称：</td><td>${product.proName}</td></tr>
        <tr><td>商品价格：</td><td>${product.price}</td></tr>
        <tr><td>库存数量：</td><td>${product.wareNum}</td></tr>
        <tr><td>商品图片：</td><td>${product.proImage}</td></tr>    
    </table>
           <p align="center"><input type=button name="delbut" value="请确认删除商品" onclick="window.location.href('/MISExampleForJSP/ProductMaintain?operator=delete&&proID=${product.proID}')"></p> 
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