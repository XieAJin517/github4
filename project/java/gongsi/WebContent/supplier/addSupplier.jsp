<%@page pageEncoding="GBK" contentType="text/html; charset=GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="bean.*,java.util.List" %>
<html>
<head>
    <title>��ӹ�Ӧ����Ϣ</title>
</head>

<body>
<p align="center"> Ҫ��ӵĹ�Ӧ����Ϣ���£�   
    <form name="addsupplier_Form" action="/MISExampleForJSP/CheckSupplierServlet?operator=add" method="post" >
    <table align="center">
       
       <tr><td><font face="����">��Ӧ�����ƣ�</font></td> 
       <td><input type="text" name="supplierName" value=""></td>
       </tr>
       
       <tr><td><font face="����">������������</font></td> 
       <td><input type="text" name="relaname" value=""></td>
       </tr>
       
       <tr><td><font face="����">�绰��</font></td> 
       <td><input type="text"  name="phone" value=""></td>
       </tr>  
       
       <tr><td><font face="����">��ַ��</font></td> 
       <td><input type="text"  name="address" value=""></td>
       </tr>  
       
       <tr><td><font face="����">�������룺</font></td> 
       <td><input type="text"  name="zipcode" value=""></td>
       </tr> 
       
       <tr><td><font face="����">���룺</font></td> 
       <td><input type="text"  name="pwd" value=""></td>
       </tr>

       <tr><td><font face="����">���飺</font></td> 
       <td><input type="text"  name="descriptio" value=""></td>
       </tr> 
       
       <tr><td><font face="����">��ҵ���֤��</font></td> 
       <td><input type="text"  name="businesslicens" value=""></td>
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