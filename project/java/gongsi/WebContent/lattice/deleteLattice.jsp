<%@page import="bean.Warehose"%>
<%@page pageEncoding="GBK" contentType="text/html; charset=GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>É¾³ý»õ¼Ü</title>
<script type="text/javascript">
		function changeShelve() {
								 window.location.href="/MISExampleForJSP/GetLatticeServlet?getType=shelveList&operator=delete&sheid="+document.getElementById("sheid").value;
								}
		function changeLattice() {
								  window.location.href="/MISExampleForJSP/GetLatticeServlet?getType=oneLattice&operator=delete&latid="+document.getElementById("latid").value+"&sheid="+document.getElementById("sheid").value;
									}
</script>
</head>
<body>
<p align="center">  
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
<tr><td><font face="ºÚÌå">ÇëÑ¡Ôñ¸ñ×Ó£º</font></td>
       <td>
       <select id="latid" name="latid" onchange="changeLattice();">
     		<option>ÇëÑ¡Ôñ</option>
         	<c:forEach var="item" items="${lattices}" varStatus="lattice"> 
					<c:if test="${item.latid==latid}">
         			<option value="${item.latid}" selected="selected">${item.latid}</option>
         			</c:if>
         			<c:if test="${item.latid!=latid}">
         			<option value="${item.latid}">${item.latid}</option>
         			</c:if>	
        	 </c:forEach>        		
       </select>
       </td> 
</tr>  
<p align="center"> ÒªÉ¾³ýµÄ¸ñ×ÓÐÅÏ¢ÈçÏÂ£º     
    <table align="center">
     
       <tr><td><font face="ºÚÌå">¸ñ×Ó±àºÅ£º</font></td> 
       <td>${lattice.latid}</td>
       </tr>
        <tr><td><font face="ºÚÌå">ËùÊô»õ¼Ü£º</font></td> 
      	 <td>${lattice.sheid} </td>
       </tr>
      <tr><td><font face="ºÚÌå">¸ñ×Ó×´Ì¬£¨0£ºÓÐ¿Õ£¬1£ºÂú£©£º</font></td> 
      	 <td>${lattice.state}</td>
       </tr>
        <tr><td><font face="ºÚÌå">¸ñ×Ó¹æ¸ñ£º</font></td> 
      	 <td>${lattice.specification}
       </tr>
       <tr>
    </table>
     <p align="center"><input type=button name="delbut" value="ÇëÈ·ÈÏÉ¾³ý¸ñ×Ó" onclick="window.location.href('/MISExampleForJSP/LatticeMaintainServlet?operator=delete&&latid=${lattice.latid}')"></p> 
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