<%@page pageEncoding="GBK" contentType="text/html; charset=GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
          function changeWarehose() {
        	  window.location.href="/MISExampleForJSP/GetWarehoseServlet?getType=OneWarehose&operator=modify&wareid="+document.getElementById("id").value;
          }
</script>
</head>
<body>
<p align="center">  
<tr><td><font face="����">��ѡ����λ��</font></td>
       <td>
       <select id="id" name="id" onchange="changeWarehose();">
   			<option>��ѡ��</option>
         	<c:forEach var="item" items="${warehoses}" varStatus="warehose"> 
					<c:if test="${item.id==id}">
         			<option value="${item.id}" selected="selected">${item.name}</option>
         			</c:if>
         			<c:if test="${item.id!=id}">
         			<option value="${item.id}">${item.name}</option>
         	</c:if>	
         </c:forEach>  
       </select>
       </td> 
</tr> 
<p align="center"> Ҫ�޸ĵ���λ��Ϣ���£�     
 <form name="edit_Form" action="/MISExampleForJSP/CheckWarehoseServlet?operator=modify&&id=${warehose.id}" method="post" >
    <table align="center">
     <tr><td><font face="����">��λ���ƣ�</font></td> 
      	 <td><input type="text" name="name" value=${warehose.name}></td>
       </tr>
        <tr><td><font face="����">��λλ�ã�</font></td> 
      	 <td><input type="text" name="position" value=${warehose.position}></td>
       </tr>
        <tr><td><font face="����">���ɻ�������</font></td> 
      	 <td><input type="text" name="shelves_total" value=${warehose.shelves_total}></td>
       </tr>
        <tr><td><font face="����">��λ״̬��0���пգ�1��������</font></td> 
      	 <td><input type="text" name="state" value=${warehose.state}></td>
       </tr>
        <tr><td><font face="����">��λ���</font></td> 
      	 <td><input type="text" name="specification" value=${warehose.specification}></td>
       </tr>
    </table>
		<p align="center"><input type="submit" name="sub" value="ȷ���޸�"></p>
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