<%@page pageEncoding="GBK" contentType="text/html; charset=GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>������</title>
<script type="text/javascript">
          function changeWarenum() {
        	  window.location.href="/MISExampleForJSP/GetWarenumServlet?getType=oneWarenum&operator=delete&proid="+document.getElementById("proid").value;
          }
</script>
</head>
<body>
<p align="center">  

<tr><td><font face="����">��ѡ����Ʒ��</font></td>
       <td><select id="proid" name="proid" onchange="changeWarenum();">
   			<option>��ѡ��</option>
         	<c:forEach var="item" items="${warenums}" varStatus="warenum"> 
					<c:if test="${item.proid==proid}">
         					<option value="${item.proid}" selected="selected">${item.name}</option>
         			</c:if>
         			<c:if test="${item.proid!=proid}">
         					<option value="${item.proid}">${item.name}</option>
         			</c:if>	
         </c:forEach>  
       </select></td> 
</tr> 


 <p align="center"> Ҫɾ���Ŀ����Ϣ����
    <table align="center">       
        <tr><td>��Ʒ��ţ�</td><td>${warenum.proid}</td></tr>
      	<tr><td>��Ʒ���� </td><td>${warenum.name}</td></tr>
        <tr><td>���ӱ�ţ�</td><td>${warenum.latid}</td></tr>
        <tr><td>���������</td><td>${warenum.warenum}</td></tr>
    </table>
           <p align="center"><input type=button name="delbut" value="��ȷ��ɾ���ֿ�" onclick="window.location.href('/MISExampleForJSP/WarenumMaintainServlet?operator=delete&&proid=${warenum.proid}')"></p> 
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