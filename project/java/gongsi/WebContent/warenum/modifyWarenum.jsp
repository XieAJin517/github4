<%@page pageEncoding="GBK" contentType="text/html; charset=GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>库存管理</title>
<script type="text/javascript">
          function changeWarenum() {
        	  window.location.href="/MISExampleForJSP/GetWarenumServlet?getType=oneWarenum&operator=modify&proid="+document.getElementById("proid").value;
          }
</script>
</head>
<body>
<p align="center">  
<tr><td><font face="黑体">请选择商品：</font></td>
       <td><select id="proid" name="proid" onchange="changeWarenum();">
   			<option>请选择</option>
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
</p>
<p align="center"> 要修改的库存信息如下:</p>
 <form name="edit_Form" action="/MISExampleForJSP/CheckWarenumServlet?operator=modify&&proid=${warenum.proid}" method="post" >
    <table align="center">
    
     <tr><td><font face="黑体">商品编码：</font></td> 
      	 <td>${warenum.proid}</td>
       </tr>
        <tr><td><font face="黑体">商品名：</font></td> 
      	 <td>${warenum.name}</td>
       </tr>
        <tr><td><font face="黑体">货架编号：</font></td> 
      	 <td><input type="text" name="latid" value=${warenum.latid}></td>
       </tr>
        <tr><td><font face="黑体">库存数量：</font></td> 
      	 <td><input type="text" name="warenum" value=${warenum.warenum}></td>
       </tr>
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