<%@page import="bean.Warehose"%>
<%@page pageEncoding="GBK" contentType="text/html; charset=GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>É¾³ý»õ¼Ü</title>
<script type="text/javascript">
          function changeWarehose() {
        	  window.location.href="/MISExampleForJSP/GetShelveServlet?getType=warehoseList&operator=delete&id="+document.getElementById("id").value;
          }
          function changeShelve() {
        	  window.location.href="/MISExampleForJSP/GetShelveServlet?getType=oneShelve&operator=delete&sheid="+document.getElementById("sheid").value+"&id="+document.getElementById("id").value;
          }
</script>
</head>
<body>
<p align="center">  
<tr><td><font face="ºÚÌå">ÇëÑ¡Ôñ²Ö¿â£º</font></td>
       <td>
       <select id="id" name="id" onchange="changeWarehose();">
         <option>ÇëÑ¡Ôñ</option>
         	<c:forEach var="item" items="${warehoses}" varStatus="warehose"> 
					<c:if test="${item.id==id}">
         			<option value="${item.id}" selected="selected">${item.name}</option>
         			</c:if>
         			<c:if test="${item.id!=id}">
         			<option value="${item.id}">${item.name}</option>
         			</c:if>	
        	 </c:forEach>  
       </select>
       </td> 
</tr> 
<tr><td><font face="ºÚÌå">ÇëÑ¡Ôñ»õ¼Ü£º</font></td>
       <td>
       <select id="sheid" name="sheid" onchange="changeShelve();">
     		<option>ÇëÑ¡Ôñ</option>
         	<c:forEach var="item" items="${shelves}" varStatus="shelve"> 
					<c:if test="${item.sheid==sheid}">
         			<option value="${item.sheid}" selected="selected">${item.sheid}</option>
         			</c:if>
         			<c:if test="${item.sheid!=sheid}">
         			<option value="${item.sheid}">${item.sheid}</option>
         			</c:if>	
        	 </c:forEach>        		
       </select>
       </td> 
</tr>  
<p align="center"> ÒªÉ¾³ýµÄ»õ¼ÜÐÅÏ¢ÈçÏÂ£º     
    <table align="center">
     
       <tr><td><font face="ºÚÌå">»õ¼Ü±àºÅ£º</font></td> 
       <td>${shelve.sheid}</td>
       </tr>
       <tr><td><font face="ºÚÌå">¸ñ×ÓÊýÁ¿£º</font></td> 
       <td>${shelve.lattice}</td>
       </tr>
        <tr><td><font face="ºÚÌå">ËùÊô²Ö¿âid£º</font></td> 
      	 <td>
       		${shelve.whid} 
      </td>
       </tr>
      <tr><td><font face="ºÚÌå">²Ö¿â×´Ì¬£¨0£ºÓÐ¿Õ£¬1£ºÂú£©£º</font></td> 
      	 <td>${shelve.state}</td>
       </tr>
        <tr><td><font face="ºÚÌå">²Ö¿â¹æ¸ñ£º</font></td> 
      	 <td>${shelve.specification}</td>
       </tr>
       <tr>
    </table>
     <p align="center"><input type=button name="delbut" value="ÇëÈ·ÈÏÉ¾³ý»õ¼Ü" onclick="window.location.href('/MISExampleForJSP/ShelveMaintainServlet?operator=delete&&sheid=${shelve.sheid}')"></p> 
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