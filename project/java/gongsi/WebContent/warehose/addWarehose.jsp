<%@page pageEncoding="GBK" contentType="text/html; charset=GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="bean.*,java.util.List" %>
<html>
<head>
    <title>�����λ��Ϣ</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>

<body>
<p align="center"> Ҫ��ӵ���λ��Ϣ���£�   
<form name="addwarehose_Form" action="/MISExampleForJSP/CheckWarehoseServlet?operator=add" method="post" >
    <table align="center">
       <tr><td><font face="����">��λ���ƣ�</font></td> 
      	 <td><input type="text" name="name" value=""></td>
       </tr>
        <tr><td><font face="����">��λλ�ã�</font></td> 
      	 <td><input type="text" name="position" value=""></td>
       </tr>
        <tr><td><font face="����">���ɻ�������</font></td> 
      	 <td><input type="text" name="shelves_total" value=""></td>
       </tr>
        <tr><td><font face="����">��λ״̬��0���пգ�1��������</font></td> 
      	 <td><input type="text" name="state" value=""></td>
       </tr>
        <tr><td><font face="����">��λ���</font></td> 
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