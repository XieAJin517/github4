<%@page pageEncoding="GBK" contentType="text/html; charset=GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="bean.*,java.util.List" %>
<html>
<head>
    <title>添加类别信息</title>
</head>

<body>
<p align="center"> 要添加的类别信息如下：   
    <form name="addcategory_Form" action="/MISExampleForJSP/CheckCategoryServlet?operator=add" method="post" >
    <table align="center">

       <tr><td><font face="黑体">类别名称：</font></td> 
       <td><input type="text" name="kindName" value=""></td>
       </tr>
       <tr><td><font face="黑体">类别描述：</font></td> 
       <td><input type="text" name="description" value=""></td>
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
