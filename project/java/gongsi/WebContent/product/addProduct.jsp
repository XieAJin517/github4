<%@page pageEncoding="GBK" contentType="text/html; charset=GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="bean.*,java.util.List" %>
<html>
<head>
    <title>�����Ʒ��Ϣ</title>
</head>

<body>
<p align="center"> Ҫ��ӵ���Ʒ��Ϣ���£�   
    <form name="addproduct_Form" action="/MISExampleForJSP/CheckProductServlet?operator=add" method="post" >
    <table align="center">
       <tr><td><font face="����">��Ʒ���</font></td>
        <td>
       <select name="kindID">
       		<c:forEach var="item" items="${categorys}" varStatus="category"> 
      			<option value="${item.kindID}">${item.kindName}</option>
      		</c:forEach> 
       </select>
       </td>   
       </tr> 

       <tr><td><font face="����">��Ʒ���ƣ�</font></td> 
       <td><input type="text" name="proName" value=""></td>
       </tr>
       <tr><td><font face="����">��Ʒ�۸�</font></td> 
       <td><input type="text" name="price" value=""></td>
       </tr>
       <tr><td><font face="����">���������</font></td> 
       <td><input type="text"  name="wareNum" value=""></td>
       </tr>  
       <tr><td><font face="����">��ƷͼƬ��</font></td> 
       <td><input type="text"  name="proImage" value=""></td>
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
