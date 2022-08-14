<%@page pageEncoding="GBK" contentType="text/html; charset=GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function changeCategory() {
	  window.location.href="/MISExampleForJSP/GetCategory1Servlet?getType=oneCategory&operator=delete&kindID="+document.getElementById("kindID").value;
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
       
     <p align="center"> 要删除的类别信息如下：
    <table align="center">       
        <tr><td>类别名称：</td><td>${category.kindName}</td></tr>
      	<tr><td>类别编号：</td><td>${category.kindID}</td></tr>
        <tr><td>类别描述：</td><td>${category.description}</td></tr>
    </table>
           <p align="center"><input type=button name="delbut" value="请确认删除类别" onclick="window.location.href('/MISExampleForJSP/CategoryMaintainServlet?operator=delete&&kindID=${category.kindID}')"></p> 
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