<%@page pageEncoding="GBK" contentType="text/html; charset=GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
          function changeSupplier() {
        	  window.location.href="/MISExampleForJSP/GetSupplierServlet?getType=oneSupplier&operator=delete&supid="+document.getElementById("supid").value;
          }
</script>
</head>
<body>
<p align="center">  
<tr><td><font face="����">��ѡ��Ӧ�̣�</font></td>
       <td>
       <select id="supid" name="supid" onchange="changeSupplier();">
         <option>��ѡ��</option>
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
<p align="center"> Ҫ�޸ĵĻ�����Ϣ���£�     
    <table align="center">
     
     <tr><td><font face="����">��Ӧ�����ƣ�</font></td> 
       <td>${supplier.suppliername}</td>
       </tr>
       
       <tr><td><font face="����">������������</font></td> 
       <td>${supplier.relaname}</td>
       </tr>
       
       <tr><td><font face="����">�绰��</font></td> 
       <td>${supplier.phone}</td>
       </tr>  
       
       <tr><td><font face="����">��ַ��</font></td> 
       <td>${supplier.address}</td>
       </tr>  
       
       <tr><td><font face="����">�������룺</font></td> 
       <td>${supplier.zipcode}</td>
       </tr> 
       
       <tr><td><font face="����">���룺</font></td> 
       <td>${supplier.pwd}</td>
       </tr>

       <tr><td><font face="����">���飺</font></td> 
       <td>${supplier.descriptio}</td>
       </tr> 
       
       <tr><td><font face="����">��ҵ���֤��</font></td> 
       <td>${supplier.businesslicens}</td>
       </tr> 
       
    </table>
     <p align="center"><input type=button name="delbut" value="ȷ��ɾ��" onclick="window.location.href('/MISExampleForJSP/SupplierMaintainServlet?operator=delete&&supplierID=${supplier.supplierID}')"></p> 
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