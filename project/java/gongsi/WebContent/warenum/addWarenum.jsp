<%@page pageEncoding="GBK" contentType="text/html; charset=GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="bean.*,java.util.List" %>
<html>
<head>
    <title>��ӿ����Ϣ</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>

<body>
<p align="center"> Ҫ��ӵĿ����Ϣ���£�   
<form name="addwarenum_Form" action="/MISExampleForJSP/CheckWarenumServlet?operator=add" method="post" >
    <table align="center">
       
        <tr><td><font face="����">��Ʒ����</font></td> 
      	<td><select name="name">
      	 		<option>��ѡ����Ʒ��</option>
       				<c:forEach var="item" items="${products}" varStatus="product"> 
      					<option value="${item.proName}">${item.proName}</option>
      				</c:forEach> 
       		</select></td>
       </tr>
        <tr><td><font face="����">���ӱ�ţ�</font></td> 
      	 <td><input type="text" name="latid" value=""></td>
       </tr>
        <tr><td><font face="����">���������</font></td> 
      	 <td><input type="text" name="warenum" value=""></td>
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