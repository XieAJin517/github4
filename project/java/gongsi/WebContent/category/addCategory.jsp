<%@page pageEncoding="GBK" contentType="text/html; charset=GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="bean.*,java.util.List" %>
<html>
<head>
    <title>��������Ϣ</title>
</head>

<body>
<p align="center"> Ҫ��ӵ������Ϣ���£�   
    <form name="addcategory_Form" action="/MISExampleForJSP/CheckCategoryServlet?operator=add" method="post" >
    <table align="center">

       <tr><td><font face="����">������ƣ�</font></td> 
       <td><input type="text" name="kindName" value=""></td>
       </tr>
       <tr><td><font face="����">���������</font></td> 
       <td><input type="text" name="description" value=""></td>
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
