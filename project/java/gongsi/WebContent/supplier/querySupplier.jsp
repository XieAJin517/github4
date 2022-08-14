<%@page pageEncoding="GBK" contentType="text/html; charset=GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="bean.Product,java.util.List" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>供应商管理</title>
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
            <option value="supplierID">供应商编号</option>
            <option value="supplierName">供应商名</option>
            <option value="relaname">负责人姓名</option>
            <option value="phone">电话</option>
            <option value="address">地址</option>
            <option value="zipcode">邮政编码</option>
            <option value="pwd">密码</option>
            <option value="businesslicens">商业许可证</option>
        </select>
        <input type="text" name="searchValue" value="" size="10"/>
        <input type="button" value="查询" onClick="doSearch();">
    </td>
</tr>

<tr>
<td>
<table cellspacing="0" align="center">
    <thead>
    <tr>
        <th>供应商编号</th>
        <th>供应商名</th>
        <th>负责人姓名</th>
        <th>电话</th>
        <th>地址</th>
        <th>邮政编码</th>
        <th>密码</th>
        <th>供应商信息</th>
        <th>商业许可证</th>
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
            共${totalRows}行&nbsp;
            第${currentPage}页&nbsp;
            共${totalPage}页&nbsp;
   <c:if test="${queryType eq 'condition'}">         
           <a href="/MISExampleForJSP/QuerySupplierServlet?queryType=condition&&queryName=${queryName}&&queryValue=${queryValue}&&currentPage=${currentPage}&&pagerTurning=firtPage">首页</a>             
           <a href="/MISExampleForJSP/QuerySupplierServlet?queryType=condition&&queryName=${queryName}&&queryValue=${queryValue}&&currentPage=${currentPage}&&pagerTurning=lastPage">上一页</a>            
           <a href="/MISExampleForJSP/QuerySupplierServlet?queryType=condition&&queryName=${queryName}&&queryValue=${queryValue}&&currentPage=${currentPage}&&pagerTurning=nextPage">下一页</a>
           <a href="/MISExampleForJSP/QuerySupplierServlet?queryType=condition&&queryName=${queryName}&&queryValue=${queryValue}&&currentPage=${currentPage}&&pagerTurning=endPage">尾页</a>
   </c:if>
   <c:if test="${queryType eq 'all'}">         
           <a href="/MISExampleForJSP/QuerySupplierServlet?queryType=all&&currentPage=${currentPage}&&pagerTurning=firtPage">首页</a>             
           <a href="/MISExampleForJSP/QuerySupplierServlet?queryType=all&&currentPage=${currentPage}&&pagerTurning=lastPage">上一页</a>            
           <a href="/MISExampleForJSP/QuerySupplierServlet?queryType=all&&currentPage=${currentPage}&&pagerTurning=nextPage">下一页</a>
           <a href="/MISExampleForJSP/QuerySupplierServlet?queryType=all&&currentPage=${currentPage}&&pagerTurning=endPage">尾页</a>
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