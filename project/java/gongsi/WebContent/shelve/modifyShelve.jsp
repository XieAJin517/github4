<%@page pageEncoding="GBK" contentType="text/html; charset=GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
          function changeWarehose() {
        	  window.location.href="/MISExampleForJSP/GetShelveServlet?getType=warehoseList&operator=modify&id="+document.getElementById("id").value;
          }
          function changeShelve() {
        	  window.location.href="/MISExampleForJSP/GetShelveServlet?getType=oneShelve&operator=modify&sheid="+document.getElementById("sheid").value+"&id="+document.getElementById("id").value;
          }
</script>
</head>
<body>
<p align="center">  
<tr><td><font face="����">��ѡ��ֿ⣺</font></td>
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
<tr><td><font face="����">��ѡ����ܣ�</font></td>
       <td>
       <select id="sheid" name="sheid" onchange="changeShelve();">
     		<option>��ѡ��</option>
         	<c:forEach var="item" items="${shelves}" varStatus="shelve"> 
					<c:if test="${item.sheid==sheid}">
         			<option value="${item.sheid}" selected="selected">${item.sheid}</option>
         			</c:if>
         			<c:if test="${item.sheid!=sheid}">
         			<option value="${item.sheid}">${item.sheid}</option>
         			</c:if>	
        	 </c:forEach>        		
       </select>
       </td> 
</tr>  
<p align="center"> Ҫ�޸ĵĻ�����Ϣ���£�     
 <form name="edit_Form" action="/MISExampleForJSP/CheckShelveServlet?operator=modify&&sheid=${shelve.sheid}" method="post" >
    <table align="center">
     
       <tr><td><font face="����">���ܱ�ţ�</font></td> 
       <td>${shelve.sheid}</td>
       </tr>
       <tr><td><font face="����">����������</font></td> 
       <td><input type="text" name="lattice" value=${shelve.lattice}></td>
       </tr>
        <tr><td><font face="����">�����ֿ⣺</font></td> 
      	 <td> <select name="whid">
      	 <option>��ѡ��</option>
       		<c:forEach var="item" items="${warehoses}" varStatus="warehose"> 
      			<option value="${item.id}">${item.name}</option>
      		</c:forEach>
       </select></td>
       </tr>
      <tr><td><font face="����">�ֿ�״̬��0���пգ�1��������</font></td> 
      	 <td><input type="text" name="state" value=${shelve.state}></td>
       </tr>
        <tr><td><font face="����">�ֿ���</font></td> 
      	 <td><input type="text" name="specification" value=${shelve.specification}></td>
       </tr>
       <tr>
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