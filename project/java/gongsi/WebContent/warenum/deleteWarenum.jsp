<%@page pageEncoding="GBK" contentType="text/html; charset=GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>¿â´æ¹ÜÀí</title>
<script type="text/javascript">
          function changeWarenum() {
        	  window.location.href="/MISExampleForJSP/GetWarenumServlet?getType=oneWarenum&operator=delete&proid="+document.getElementById("proid").value;
          }
</script>
</head>
<body>
<p align="center">  

<tr><td><font face="ºÚÌå">ÇëÑ¡ÔñÉÌÆ·£º</font></td>
       <td><select id="proid" name="proid" onchange="changeWarenum();">
   			<option>ÇëÑ¡Ôñ</option>
         	<c:forEach var="item" items="${warenums}" varStatus="warenum"> 
					<c:if test="${item.proid==proid}">
         					<option value="${item.proid}" selected="selected">${item.name}</option>
         			</c:if>
         			<c:if test="${item.proid!=proid}">
         					<option value="${item.proid}">${item.name}</option>
         			</c:if>	
         </c:forEach>  
       </select></td> 
</tr> 


 <p align="center"> ÒªÉ¾³ýµÄ¿â´æÐÅÏ¢ÈçÏÂ
    <table align="center">       
        <tr><td>ÉÌÆ·±àºÅ£º</td><td>${warenum.proid}</td></tr>
      	<tr><td>ÉÌÆ·Ãû£º </td><td>${warenum.name}</td></tr>
        <tr><td>¸ñ×Ó±àºÅ£º</td><td>${warenum.latid}</td></tr>
        <tr><td>¿â´æÊýÁ¿£º</td><td>${warenum.warenum}</td></tr>
    </table>
           <p align="center"><input type=button name="delbut" value="ÇëÈ·ÈÏÉ¾³ý²Ö¿â" onclick="window.location.href('/MISExampleForJSP/WarenumMaintainServlet?operator=delete&&proid=${warenum.proid}')"></p> 
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