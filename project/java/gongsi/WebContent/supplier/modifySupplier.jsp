<%@page pageEncoding="GBK" contentType="text/html; charset=GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
          function changeSupplier() {
        	  window.location.href="/MISExampleForJSP/GetSupplierServlet?getType=oneSupplier&operator=modify&supid="+document.getElementById("supid").value;
          }
</script>
</head>
<body>
<p align="center">  
<tr><td><font face="黑体">请选择供应商：</font></td>
       <td>
       <select id="supid" name="supid" onchange="changeSupplier();">
         <option>请选择</option>
         	<c:forEach var="item" items="${suppliers}" varStatus="supplier"> 
					<c:if test="${item.supplierID==supplierID}">
         			<option value="${item.supplierID}" selected="selected">${item.suppliername}</option>
         			</c:if>
         			<c:if test="${item.supplierID!=supplierID}">
         			<option value="${item.supplierID}">${item.suppliername}</option>
         			</c:if>	
        	 </c:forEach>  
       </select>
       </td> 
</tr>  
<p align="center"> 要修改的货架信息如下：     
 <form name="edit_Form" action="/MISExampleForJSP/CheckSupplierServlet?operator=modify&&supplierID=${supplier.supplierID}" method="post" >
    <table align="center">
     
     <tr><td><font face="黑体">供应商名称：</font></td> 
       <td><input type="text" name="supplierName" value=${supplier.suppliername}></td>
       </tr>
       
       <tr><td><font face="黑体">负责人姓名：</font></td> 
       <td><input type="text" name="relaname" value=${supplier.relaname}></td>
       </tr>
       
       <tr><td><font face="黑体">电话：</font></td> 
       <td><input type="text"  name="phone" value=${supplier.phone}></td>
       </tr>  
       
       <tr><td><font face="黑体">地址：</font></td> 
       <td><input type="text"  name="address" value=${supplier.address}></td>
       </tr>  
       
       <tr><td><font face="黑体">邮政编码：</font></td> 
       <td><input type="text"  name="zipcode" value=${supplier.zipcode}></td>
       </tr> 
       
       <tr><td><font face="黑体">密码：</font></td> 
       <td><input type="text"  name="pwd" value=${supplier.pwd}></td>
       </tr>

       <tr><td><font face="黑体">详情：</font></td> 
       <td><input type="text"  name="descriptio" value=${supplier.descriptio}></td>
       </tr> 
       
       <tr><td><font face="黑体">商业许可证：</font></td> 
       <td><input type="text"  name="businesslicens" value=${supplier.businesslicens}></td>
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