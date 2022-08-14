<%@page pageEncoding="GBK" contentType="text/html; charset=GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
          function changeCategory() {
        	  window.location.href="/MISExampleForJSP/GetProductServlet?getType=productList&operator=modify&kindID="+document.getElementById("kindID").value;
          }
          function changeProduct() {
        	  window.location.href="/MISExampleForJSP/GetProductServlet?getType=oneProduct&operator=modify&proID="+document.getElementById("proID").value+"&kindID="+document.getElementById("kindID").value;
          }
</script>
</head>
<body>
<p align="center">  
<tr><td><font face="ºÚÌå">ÇëÑ¡ÔñÉÌÆ·Àà±ð£º</font></td>
       <td>
       <select id="kindID" name="kindID" onchange="changeCategory();">
   		<option>ÇëÑ¡Ôñ</option>
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
     		<option>ÇëÑ¡Ôñ</option>
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
<p align="center"> ÒªÐÞ¸ÄµÄÉÌÆ·ÐÅÏ¢ÈçÏÂ£º     
 <form name="edit_Form" action="/MISExampleForJSP/CheckProductServlet?operator=modify&&proID=${product.proID}&&kindID=${product.kindID}" method="post" >
    <table align="center">
       <tr><td><font face="ºÚÌå">ÉÌÆ·Àà±ð£º</font></td>
       	<td>
       	<c:if test="${operatorStr=='modify' || operatorStr=='add'}">  
       		<select name="kindID">
         	<c:forEach var="item" items="${categorys}" varStatus="category"> 
         		<c:if test="${operatorStr=='add'}">
         			<option value="${item.kindID}">${item.kindName}</option>
         		</c:if>
				<c:if test="${operatorStr=='modify'}">
					<c:if test="${item.kindID==product.kindID}">
         			<option value="${item.kindID}" selected="selected">${item.kindName}</option>
         			</c:if>
         			<c:if test="${item.kindID!=product.kindID}">
         			<option value="${item.kindID}">${item.kindName}</option>
         		</c:if>
         	</c:if>	
         </c:forEach>  
         </select>
         </c:if>
         </td>
       </tr> 

       <tr><td><font face="ºÚÌå">ÉÌÆ·Ãû³Æ£º</font></td> 
       <td><input type="text" name="proName" value=${product.proName}></td>
       </tr>
       <tr><td><font face="ºÚÌå">ÉÌÆ·¼Û¸ñ£º</font></td> 
       <td><input type="text" name="price" value=${product.price}></td>
       </tr>
       <tr><td><font face="ºÚÌå">¿â´æÊýÁ¿£º</font></td> 
       <td><input type="text"  name="wareNum" value=${product.wareNum}></td>
       </tr> 
       <tr><td><font face="ºÚÌå">ÉÌÆ·Í¼Æ¬£º</font></td> 
       <td><input type="text"  name="proImage" value=${product.proImage}></td>
       </tr>       
    </table>
		<p align="center"><input type="submit" name="sub" value="È·¶¨ÐÞ¸Ä"></p>
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