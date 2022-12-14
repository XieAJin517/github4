<%@page pageEncoding="GBK" contentType="text/html; charset=GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
          function changeShelve() {
        	  window.location.href="/MISExampleForJSP/GetLatticeServlet?getType=shelveList&operator=modify&sheid="+document.getElementById("sheid").value;
          }
          function changeLattice() {
        	  window.location.href="/MISExampleForJSP/GetLatticeServlet?getType=oneLattice&operator=modify&latid="+document.getElementById("latid").value+"&sheid="+document.getElementById("sheid").value;
          }
</script>
</head>
<body>
<p align="center">  
<tr><td><font face="黑体">请选择货架：</font></td>
       <td>
       <select id="sheid" name="sheid" onchange="changeShelve();">
         <option>请选择</option>
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
<tr><td><font face="黑体">请选择格子：</font></td>
       <td>
       <select id="latid" name="latid" onchange="changeLattice();">
     		<option>请选择</option>
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
<p align="center"> 要修改的货架信息如下：     
 <form name="edit_Form" action="/MISExampleForJSP/CheckLatticeServlet?operator=modify&&latid=${lattice.latid}" method="post" >
    <table align="center">
     
       <tr><td><font face="黑体">格子编号：</font></td> 
       <td>${lattice.latid}</td>
       </tr>
        <tr><td><font face="黑体">所属货架：</font></td> 
      	 <td> <select name="sheid">
      	 <option>请选择</option>
       		<c:forEach var="item" items="${shelves}" varStatus="shelve"> 
      			<option value="${item.sheid}">${item.sheid}</option>
      		</c:forEach>
       </select></td>
       </tr>
      <tr><td><font face="黑体">格子状态（0：有空，1：满）：</font></td> 
      	 <td><input type="text" name="state" value=${lattice.state}></td>
       </tr>
        <tr><td><font face="黑体">格子规格：</font></td> 
      	 <td><input type="text" name="specification" value=${lattice.specification}></td>
       </tr>
       <tr>
    </table>
		<p align="center"><input type="submit" name="sub" value="确定修改"></p>
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