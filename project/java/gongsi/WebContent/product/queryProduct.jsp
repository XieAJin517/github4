<%@page pageEncoding="GBK" contentType="text/html; charset=GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="bean.Product,java.util.List" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>商品管理</title>
    <script language="JavaScript">   
        function doSearch(){
            if(document.all.searchValue.value=="")
            {    
            	window.location.href="/MISExampleForJSP/QueryProductServlet?currentPage=1&&pagerTurning=firstPage&&queryType=all";
            }else{
            	window.location.href="/MISExampleForJSP/QueryProductServlet?currentPage=1&&pagerTurning=firstPage&&queryType=condition&&queryName="+document.all.searchName.value+"&&queryValue="+encodeURI(encodeURI(document.all.searchValue.value));
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
            <option value="proID">商品编号</option>
            <option value="proName">商品名称</option>
            <option value="category.kindId">类别编号</option>
            <option value="kindName">类别名称</option>
            <option value="price">单价</option>
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
        <th>商品编号</th>
        <th>商品名称</th>
        <th>商品类别</th>
        <th>单价</th>
        <th>库存数量</th>
        <th>商品图片</th>
    </tr>
    </thead>
    <tbody>
    
<c:forEach var="item" items="${queryProducts}" varStatus="product">     
        <tr class="trs">
            <td>
            <a href="Product?operator=3&&proID=${item.proID}">${item.proID}</a>  
            </td>
            <td>${item.proName}</td>
            <td>${item.kindName}</td>
            <td>${item.price}</td>
            <td>${item.wareNum}</td>
            <td><img src=${item.proImage} alt="无图片"  width="48" height="48"></td>
        </tr>  
</c:forEach>    
    
    <tr align="right">
        <td colspan="9">
            共${totalRows}行&nbsp;
            第${currentPage}页&nbsp;
            共${totalPage}页&nbsp;
   <c:if test="${queryType eq 'condition'}">         
           <a href="/MISExampleForJSP/QueryProductServlet?queryType=condition&&queryName=${queryName}&&queryValue=${queryValue}&&currentPage=${currentPage}&&pagerTurning=firtPage">首页</a>             
           <a href="/MISExampleForJSP/QueryProductServlet?queryType=condition&&queryName=${queryName}&&queryValue=${queryValue}&&currentPage=${currentPage}&&pagerTurning=lastPage">上一页</a>            
           <a href="/MISExampleForJSP/QueryProductServlet?queryType=condition&&queryName=${queryName}&&queryValue=${queryValue}&&currentPage=${currentPage}&&pagerTurning=nextPage">下一页</a>
           <a href="/MISExampleForJSP/QueryProductServlet?queryType=condition&&queryName=${queryName}&&queryValue=${queryValue}&&currentPage=${currentPage}&&pagerTurning=endPage">尾页</a>
   </c:if>
   <c:if test="${queryType eq 'all'}">         
           <a href="/MISExampleForJSP/QueryProductServlet?queryType=all&&currentPage=${currentPage}&&pagerTurning=firtPage">首页</a>             
           <a href="/MISExampleForJSP/QueryProductServlet?queryType=all&&currentPage=${currentPage}&&pagerTurning=lastPage">上一页</a>            
           <a href="/MISExampleForJSP/QueryProductServlet?queryType=all&&currentPage=${currentPage}&&pagerTurning=nextPage">下一页</a>
           <a href="/MISExampleForJSP/QueryProductServlet?queryType=all&&currentPage=${currentPage}&&pagerTurning=endPage">尾页</a>
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
