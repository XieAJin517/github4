<%@page pageEncoding="GBK" contentType="text/html; charset=GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="bean.*,java.util.List" %>
<html>
<head>
    <title>��ӻ�����Ϣ</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>

<body>
<p align="center"> Ҫ��ӵĻ�����Ϣ���£�   
<form name="addshelve_Form" action="/MISExampleForJSP/CheckShelveServlet?operator=add" method="post" >
    <table align="center">
       <tr><td><font face="����">��������</font></td> 
      	 <td><input type="text" name="lattice" value=""></td>
       </tr>
        <tr><td><font face="����">�����ֿ⣺</font></td> 
      	 <td> <select name="whid">
       		<c:forEach var="item" items="${warehoses}" varStatus="warehose"> 
      			<option value="${item.id}">${item.name}</option>
      		</c:forEach> 
       </select></td>
       </tr>
       
        <tr><td><font face="����">����״̬��0���пգ�1��������</font></td> 
      	 <td><input type="text" name="state" value=""></td>
       </tr>
        <tr><td><font face="����">���ܹ��</font></td> 
      	 <td><input type="text" name="specification" value=""></td>
       </tr>
       <tr>
		<td><input type="submit" name="sub" value="ȷ��"></td>
		<td><input type="reset" name="res" value="����"></td>
		</tr>
    </table>
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