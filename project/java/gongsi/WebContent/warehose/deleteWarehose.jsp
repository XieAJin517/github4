<%@page pageEncoding="GBK" contentType="text/html; charset=GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
          function changeWarehose() {
        	  window.location.href="/MISExampleForJSP/GetWarehoseServlet?getType=OneWarehose&operator=delete&wareid="+document.getElementById("id").value;
          }
</script>
</head>
<body>
<p align="center">  
<tr><td><font face="ºÚÌå">ÇëÑ¡ÔñÊéÎ»£º</font></td>
       <td>
       <select id="id" name="id" onchange="changeWarehose();">
   		
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

 <p align="center"> ÒªÉ¾³ýµÄÊéÎ»ÐÅÏ¢ÈçÏÂ
    <table align="center">       
        <tr><td>ÊéÎ»Ãû³Æ£º            </td><td>${warehose.name}</td></tr>
      	<tr><td>ÊéÎ»Î»ÖÃ£º            </td><td>${warehose.position}</td></tr>
        <tr><td>ÈÝÄÉ»õ¼ÜÊý£º           </td><td>${warehose.shelves_total}</td></tr>
        <tr><td>ÊéÎ»×´Ì¬£¨0£ºÓÐ¿Õ£¬1£ºÂú£©£º</td><td>${warehose.state}</td></tr>
        <tr><td>ÊéÎ»¹æ¸ñ£º            </td><td>${warehose.specification}</td></tr>  
    </table>
           <p align="center"><input type=button name="delbut" value="ÇëÈ·ÈÏÉ¾³ýÊéÎ»" onclick="window.location.href('/MISExampleForJSP/WarehoseMaintain?operator=delete&&warehid=${warehose.id}')"></p> 
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