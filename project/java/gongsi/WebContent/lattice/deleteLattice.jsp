<%@page import="bean.Warehose"%>
<%@page pageEncoding="GBK" contentType="text/html; charset=GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ɾ������</title>
<script type="text/javascript">
		function changeShelve() {
								 window.location.href="/MISExampleForJSP/GetLatticeServlet?getType=shelveList&operator=delete&sheid="+document.getElementById("sheid").value;
								}
		function changeLattice() {
								  window.location.href="/MISExampleForJSP/GetLatticeServlet?getType=oneLattice&operator=delete&latid="+document.getElementById("latid").value+"&sheid="+document.getElementById("sheid").value;
									}
</script>
</head>
<body>
<p align="center">  
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
<tr><td><font face="����">��ѡ����ӣ�</font></td>
       <td>
       <select id="latid" name="latid" onchange="changeLattice();">
     		<option>��ѡ��</option>
         	<c:forEach var="item" items="${lattices}" varStatus="lattice"> 
					<c:if test="${item.latid==latid}">
         			<option value="${item.latid}" selected="selected">${item.latid}</option>
         			</c:if>
         			<c:if test="${item.latid!=latid}">
         			<option value="${item.latid}">${item.latid}</option>
         			</c:if>	
        	 </c:forEach>        		
       </select>
       </td> 
</tr>  
<p align="center"> Ҫɾ���ĸ�����Ϣ���£�     
    <table align="center">
     
       <tr><td><font face="����">���ӱ�ţ�</font></td> 
       <td>${lattice.latid}</td>
       </tr>
        <tr><td><font face="����">�������ܣ�</font></td> 
      	 <td>${lattice.sheid} </td>
       </tr>
      <tr><td><font face="����">����״̬��0���пգ�1��������</font></td> 
      	 <td>${lattice.state}</td>
       </tr>
        <tr><td><font face="����">���ӹ��</font></td> 
      	 <td>${lattice.specification}
       </tr>
       <tr>
    </table>
     <p align="center"><input type=button name="delbut" value="��ȷ��ɾ������" onclick="window.location.href('/MISExampleForJSP/LatticeMaintainServlet?operator=delete&&latid=${lattice.latid}')"></p> 
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