<%@page pageEncoding="GBK" contentType="text/html; charset=GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="bean.Product,java.util.List" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>书位管理</title>
    <script language="JavaScript">   
        function doSearch(){
            if(document.all.searchValue.value=="")
            {    
            	window.location.href="/MISExampleForJSP/QueryWarehoseServlet?currentPage=1&&pagerTurning=firstPage&&queryType=all";
            }else{
            	window.location.href="/MISExampleForJSP/QueryWarehoseServlet?currentPage=1&&pagerTurning=firstPage&&queryType=condition&&queryName="+document.all.searchName.value+"&&queryValue="+encodeURI(encodeURI(document.all.searchValue.value));
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
            <option value="id">书位编号</option>
            <option value="name">书位名称</option>
            <option value="position">书位地址</option>
            <option value="shelves_total">货架数量</option>
            <option value="state">书位状态</option>
            <option value="specification">书位规格</option>
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
        <th>书位编号</th>
        <th>书位名称</th>
        <th>书位地址</th>
        <th>书位数量</th>
        <th>书位状态</th>
        <th>书位规格</th>
    </tr>
    </thead>
    <tbody>
    
<c:forEach var="item" items="${queryWarehoses}" varStatus="warehose">     
        <tr class="trs">
            <td>${item.id}</td>
            <td>${item.name}</td>
            <td>${item.position}</td>
            <td>${item.shelves_total}</td>
            <td>${item.state}</td>
            <td>${item.specification}</td>
        </tr>  
</c:forEach>    
    
    <tr align="right">
        <td colspan="9">
            共${totalRows}行&nbsp;
            第${currentPage}页&nbsp;
            共${totalPage}页&nbsp;
   <c:if test="${queryType eq 'condition'}">         
           <a href="/MISExampleForJSP/QueryWarehoseServlet?queryType=condition&&queryName=${queryName}&&queryValue=${queryValue}&&currentPage=${currentPage}&&pagerTurning=firtPage">首页</a>             
           <a href="/MISExampleForJSP/QueryWarehoseServlet?queryType=condition&&queryName=${queryName}&&queryValue=${queryValue}&&currentPage=${currentPage}&&pagerTurning=lastPage">上一页</a>            
           <a href="/MISExampleForJSP/QueryWarehoseServlet?queryType=condition&&queryName=${queryName}&&queryValue=${queryValue}&&currentPage=${currentPage}&&pagerTurning=nextPage">下一页</a>
           <a href="/MISExampleForJSP/QueryWarehoseServlet?queryType=condition&&queryName=${queryName}&&queryValue=${queryValue}&&currentPage=${currentPage}&&pagerTurning=endPage">尾页</a>
   </c:if>
   <c:if test="${queryType eq 'all'}">         
           <a href="/MISExampleForJSP/QueryWarehoseServlet?queryType=all&&currentPage=${currentPage}&&pagerTurning=firtPage">首页</a>             
           <a href="/MISExampleForJSP/QueryWarehoseServlet?queryType=all&&currentPage=${currentPage}&&pagerTurning=lastPage">上一页</a>            
           <a href="/MISExampleForJSP/QueryWarehoseServlet?queryType=all&&currentPage=${currentPage}&&pagerTurning=nextPage">下一页</a>
           <a href="/MISExampleForJSP/QueryWarehoseServlet?queryType=all&&currentPage=${currentPage}&&pagerTurning=endPage">尾页</a>
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