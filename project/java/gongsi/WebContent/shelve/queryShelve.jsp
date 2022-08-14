<%@page pageEncoding="GBK" contentType="text/html; charset=GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="bean.Product,java.util.List" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>�ֿ����</title>
    <script language="JavaScript">   
        function doSearch(){
            if(document.all.searchValue.value=="")
            {    
            	window.location.href="/MISExampleForJSP/QueryShelveServlet?currentPage=1&&pagerTurning=firstPage&&queryType=all";
            }else{
            	window.location.href="/MISExampleForJSP/QueryShelveServlet?currentPage=1&&pagerTurning=firstPage&&queryType=condition&&queryName="+document.all.searchName.value+"&&queryValue="+encodeURI(encodeURI(document.all.searchValue.value));
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
            <option value="sheid">���ܱ��</option>
            <option value="lattice">��������</option>
            <option value="whid">�ֿ�id</option>
            <option value="state">����״̬</option>
            <option value="specification">���ܹ��</option>
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
        <th>���ܱ��</th>
        <th>��������</th>
        <th>�����ֿ�id</th>
        <th>�ֿ�״̬</th>
        <th>�ֿ���</th>
    </tr>
    </thead>
    <tbody>
    
<c:forEach var="item" items="${queryShelves}" varStatus="shelve">     
        <tr class="trs">
            <td>${item.sheid}</td>
            <td>${item.lattice}</td>
            <td>${item.whid}</td>
            <td>${item.state}</td>
            <td>${item.specification}</td>
        </tr>  
</c:forEach>    
    
    <tr align="right">
        <td colspan="9">
            ��${totalRows}��&nbsp;
            ��${currentPage}ҳ&nbsp;
            ��${totalPage}ҳ&nbsp;
   <c:if test="${queryType eq 'condition'}">         
           <a href="/MISExampleForJSP/QueryShelveServlet?queryType=condition&&queryName=${queryName}&&queryValue=${queryValue}&&currentPage=${currentPage}&&pagerTurning=firtPage">��ҳ</a>             
           <a href="/MISExampleForJSP/QueryShelveServlet?queryType=condition&&queryName=${queryName}&&queryValue=${queryValue}&&currentPage=${currentPage}&&pagerTurning=lastPage">��һҳ</a>            
           <a href="/MISExampleForJSP/QueryShelveServlet?queryType=condition&&queryName=${queryName}&&queryValue=${queryValue}&&currentPage=${currentPage}&&pagerTurning=nextPage">��һҳ</a>
           <a href="/MISExampleForJSP/QueryShelveServlet?queryType=condition&&queryName=${queryName}&&queryValue=${queryValue}&&currentPage=${currentPage}&&pagerTurning=endPage">βҳ</a>
   </c:if>
   <c:if test="${queryType eq 'all'}">         
           <a href="/MISExampleForJSP/QueryShelveServlet?queryType=all&&currentPage=${currentPage}&&pagerTurning=firtPage">��ҳ</a>             
           <a href="/MISExampleForJSP/QueryShelveServlet?queryType=all&&currentPage=${currentPage}&&pagerTurning=lastPage">��һҳ</a>            
           <a href="/MISExampleForJSP/QueryShelveServlet?queryType=all&&currentPage=${currentPage}&&pagerTurning=nextPage">��һҳ</a>
           <a href="/MISExampleForJSP/QueryShelveServlet?queryType=all&&currentPage=${currentPage}&&pagerTurning=endPage">βҳ</a>
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