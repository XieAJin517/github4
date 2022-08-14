<%@page pageEncoding="GBK" contentType="text/html; charset=GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="bean.Product,java.util.List" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>��Ӧ�̹���</title>
    <script language="JavaScript">   
        function doSearch(){
            if(document.all.searchValue.value=="")
            {    
            	window.location.href="/MISExampleForJSP/QuerySupplierServlet?currentPage=1&&pagerTurning=firstPage&&queryType=all";
            }else{
            	window.location.href="/MISExampleForJSP/QuerySupplierServlet?currentPage=1&&pagerTurning=firstPage&&queryType=condition&&queryName="+document.all.searchName.value+"&&queryValue="+encodeURI(encodeURI(document.all.searchValue.value));
             }
        }
    </script>
</head>
    <style type="text/css">
        table {
            border: 1px solid black;
            border-collapse: collapse;
        }
        
        \table thead tr th {
            border: 1px solid black;
            padding: 3px;
            background-color: #cccccc;
            background-color: expression(this.rowIndex % 2 == 0 ? "#FFFFFF" : "#EEEEEE");
        }
        
        table tbody tr td {
            border: 1px solid black;
            padding: 3px;
        }
        .trs{
            background-color: expression(this.rowIndex % 2 == 0 ? "#FFFFFF" : "#EEEEEE");
        }
    </style>


<body>

<table align="center">
<tr align="center">
    <td>
        <select name="searchName">
            <option value="supplierID">��Ӧ�̱��</option>
            <option value="supplierName">��Ӧ����</option>
            <option value="relaname">����������</option>
            <option value="phone">�绰</option>
            <option value="address">��ַ</option>
            <option value="zipcode">��������</option>
            <option value="pwd">����</option>
            <option value="businesslicens">��ҵ���֤</option>
        </select>
        <input type="text" name="searchValue" value="" size="10"/>
        <input type="button" value="��ѯ" onClick="doSearch();">
    </td>
</tr>

<tr>
<td>
<table cellspacing="0" align="center">
    <thead>
    <tr>
        <th>��Ӧ�̱��</th>
        <th>��Ӧ����</th>
        <th>����������</th>
        <th>�绰</th>
        <th>��ַ</th>
        <th>��������</th>
        <th>����</th>
        <th>��Ӧ����Ϣ</th>
        <th>��ҵ���֤</th>
    </tr>
    </thead>
    <tbody>
    
<c:forEach var="item" items="${querysuppliers}" varStatus="supplier">     
        <tr class="trs">
            <td>${item.supplierID}</td>
            <td>${item.suppliername}</td>
            <td>${item.relaname}</td>
            <td>${item.phone}</td>
            <td>${item.address}</td>
            <td>${item.zipcode}</td>
            <td>${item.pwd}</td>
            <td>${item.descriptio}</td>
            <td>${item.businesslicens}</td>
        </tr>  
</c:forEach>    
    
    <tr align="right">
        <td colspan="9">
            ��${totalRows}��&nbsp;
            ��${currentPage}ҳ&nbsp;
            ��${totalPage}ҳ&nbsp;
   <c:if test="${queryType eq 'condition'}">         
           <a href="/MISExampleForJSP/QuerySupplierServlet?queryType=condition&&queryName=${queryName}&&queryValue=${queryValue}&&currentPage=${currentPage}&&pagerTurning=firtPage">��ҳ</a>             
           <a href="/MISExampleForJSP/QuerySupplierServlet?queryType=condition&&queryName=${queryName}&&queryValue=${queryValue}&&currentPage=${currentPage}&&pagerTurning=lastPage">��һҳ</a>            
           <a href="/MISExampleForJSP/QuerySupplierServlet?queryType=condition&&queryName=${queryName}&&queryValue=${queryValue}&&currentPage=${currentPage}&&pagerTurning=nextPage">��һҳ</a>
           <a href="/MISExampleForJSP/QuerySupplierServlet?queryType=condition&&queryName=${queryName}&&queryValue=${queryValue}&&currentPage=${currentPage}&&pagerTurning=endPage">βҳ</a>
   </c:if>
   <c:if test="${queryType eq 'all'}">         
           <a href="/MISExampleForJSP/QuerySupplierServlet?queryType=all&&currentPage=${currentPage}&&pagerTurning=firtPage">��ҳ</a>             
           <a href="/MISExampleForJSP/QuerySupplierServlet?queryType=all&&currentPage=${currentPage}&&pagerTurning=lastPage">��һҳ</a>            
           <a href="/MISExampleForJSP/QuerySupplierServlet?queryType=all&&currentPage=${currentPage}&&pagerTurning=nextPage">��һҳ</a>
           <a href="/MISExampleForJSP/QuerySupplierServlet?queryType=all&&currentPage=${currentPage}&&pagerTurning=endPage">βҳ</a>
   </c:if>   
        </td>
    </tr>    
    </tbody>
</table>
</td>
</tr>
</table>
</body>
</html>