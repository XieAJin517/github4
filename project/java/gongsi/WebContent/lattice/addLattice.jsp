<%@page pageEncoding="GBK" contentType="text/html; charset=GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="bean.*,java.util.List" %>
<html>
<head>
    <title>��Ӹ�����Ϣ</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>

<body>
<p align="center"> Ҫ��ӵĸ�����Ϣ���£�   
<form name="addlattice_Form" action="/MISExampleForJSP/CheckLatticeServlet?operator=add" method="post" >
    <table align="center">
        <tr><td><font face="����">�������ܣ�</font></td> 
      	 <td> <select name="sheid">
       		<c:forEach var="item" items="${shelves}" varStatus="shelve"> 
      			<option value="${item.sheid}">${item.sheid}</option>
      		</c:forEach> 
       </select></td>
       </tr>
       
        <tr><td><font face="����">����״̬��0���пգ�1��������</font></td> 
      	 <td><input type="text" name="state" value=""></td>
       </tr>
        <tr><td><font face="����">���ӹ��</font></td> 
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