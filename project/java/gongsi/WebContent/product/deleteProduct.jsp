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
<tr><td><font face="ºÚÌå">ÇëÑ¡ÔñÉÌÆ·Àà±ð£º</font></td>
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
<tr><td><font face="ºÚÌå">ÇëÑ¡ÔñÉÌÆ·Ãû³Æ£º</font></td>
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
       
     <p align="center"> ÒªÉ¾³ýµÄÉÌÆ·ÐÅÏ¢ÈçÏÂ£º
    <table align="center">       
        <tr><td>Àà±ðÃû³Æ£º</td><td>${product.kindName}</td></tr>
      	<tr><td>ÉÌÆ·±àºÅ£º</td><td>${product.proID}</td></tr>
        <tr><td>ÉÌÆ·Ãû³Æ£º</td><td>${product.proName}</td></tr>
        <tr><td>ÉÌÆ·¼Û¸ñ£º</td><td>${product.price}</td></tr>
        <tr><td>¿â´æÊýÁ¿£º</td><td>${product.wareNum}</td></tr>
        <tr><td>ÉÌÆ·Í¼Æ¬£º</td><td>${product.proImage}</td></tr>    
    </table>
           <p align="center"><input type=button name="delbut" value="ÇëÈ·ÈÏÉ¾³ýÉÌÆ·" onclick="window.location.href('/MISExampleForJSP/ProductMaintain?operator=delete&&proID=${product.proID}')"></p> 
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