<%@page pageEncoding="GBK" contentType="text/html; charset=GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
          function changeWarehose() {
        	  window.location.href="/MISExampleForJSP/GetShelveServlet?getType=warehoseList&operator=modify&id="+document.getElementById("id").value;
          }
          function changeShelve() {
        	  window.location.href="/MISExampleForJSP/GetShelveServlet?getType=oneShelve&operator=modify&sheid="+document.getElementById("sheid").value+"&id="+document.getElementById("id").value;
          }
</script>
</head>
<body>
<p align="center">  
<tr><td><font face="黑体">请选择仓库：</font></td>
       <td>
       <select id="id" name="id" onchange="changeWarehose();">
         <option>请选择</option>
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
<tr><td><font face="黑体">请选择货架：</font></td>
       <td>
       <select id="sheid" name="sheid" onchange="changeShelve();">
     		<option>请选择</option>
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
<p align="center"> 要修改的货架信息如下：     
 <form name="edit_Form" action="/MISExampleForJSP/CheckShelveServlet?operator=modify&&sheid=${shelve.sheid}" method="post" >
    <table align="center">
     
       <tr><td><font face="黑体">货架编号：</font></td> 
       <td>${shelve.sheid}</td>
       </tr>
       <tr><td><font face="黑体">格子数量：</font></td> 
       <td><input type="text" name="lattice" value=${shelve.lattice}></td>
       </tr>
        <tr><td><font face="黑体">所属仓库：</font></td> 
      	 <td> <select name="whid">
      	 <option>请选择</option>
       		<c:forEach var="item" items="${warehoses}" varStatus="warehose"> 
      			<option value="${item.id}">${item.name}</option>
      		</c:forEach>
       </select></td>
       </tr>
      <tr><td><font face="黑体">仓库状态（0：有空，1：满）：</font></td> 
      	 <td><input type="text" name="state" value=${shelve.state}></td>
       </tr>
        <tr><td><font face="黑体">仓库规格：</font></td> 
      	 <td><input type="text" name="specification" value=${shelve.specification}></td>
       </tr>
       <tr>
    </table>
		<p align="center"><input type="submit" name="sub" value="确定修改"></p>
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