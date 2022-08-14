<%@page pageEncoding="GBK" contentType="text/html; charset=GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="bean.*,java.util.List" %>
<html>
<head>
    <title>添加供应商信息</title>
</head>

<body>
<p align="center"> 要添加的供应商信息如下：   
    <form name="addsupplier_Form" action="/MISExampleForJSP/CheckSupplierServlet?operator=add" method="post" >
    <table align="center">
       
       <tr><td><font face="黑体">供应商名称：</font></td> 
       <td><input type="text" name="supplierName" value=""></td>
       </tr>
       
       <tr><td><font face="黑体">负责人姓名：</font></td> 
       <td><input type="text" name="relaname" value=""></td>
       </tr>
       
       <tr><td><font face="黑体">电话：</font></td> 
       <td><input type="text"  name="phone" value=""></td>
       </tr>  
       
       <tr><td><font face="黑体">地址：</font></td> 
       <td><input type="text"  name="address" value=""></td>
       </tr>  
       
       <tr><td><font face="黑体">邮政编码：</font></td> 
       <td><input type="text"  name="zipcode" value=""></td>
       </tr> 
       
       <tr><td><font face="黑体">密码：</font></td> 
       <td><input type="text"  name="pwd" value=""></td>
       </tr>

       <tr><td><font face="黑体">详情：</font></td> 
       <td><input type="text"  name="descriptio" value=""></td>
       </tr> 
       
       <tr><td><font face="黑体">商业许可证：</font></td> 
       <td><input type="text"  name="businesslicens" value=""></td>
       </tr> 
       
        <tr>
		<td><input type="submit" name="sub" value="确定"></td>
		<td><input type="reset" name="res" value="重填"></td>
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