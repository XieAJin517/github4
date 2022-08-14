<%@page pageEncoding="GBK" contentType="text/html; charset=GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="bean.Product,java.util.List" %>
<%@ page import="java.util.List" %>
<%@ page import="bean.Product" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>商品查询</title>
    <script language="JavaScript">   
        function doSearch(){
            if(document.all.searchValue.value=="")
            {    
            	window.location.href="/MISExampleForJSP/QueryProductServlet?currentPage=1&&pagerTurning=firstPage&&queryType=all&&queryGraph=yes";
            }else{
            	window.location.href="/MISExampleForJSP/QueryProductServlet?currentPage=1&&pagerTurning=firstPage&&queryType=condition&&queryGraph=yes&&queryName="+document.all.searchName.value+"&&queryValue="+document.all.searchValue.value;
             }
        }
    </script>
</head>
<style>
div.img {
    margin: 5px;
    border: 1px solid #ccc;
    float: left;
    width: 180px;
}

div.img:hover {
    border: 1px solid #777;
}

div.img img {
    width: 100%;
    height: auto;
}
div.desc {
    padding: 15px;
    text-align: center;
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
</table>
<table>

<%
List<Product> queryProducts=(List<Product>) request.getAttribute("queryProducts");
	if (queryProducts!=null)
	{	
		int lenofprolist=queryProducts.size();  //商品列表长度
		int numofpic=4;  //每行显示图片数量
		int rownum=lenofprolist / numofpic;   //商品列表长度是每行显示图片数量的倍数
		int modofprolist=lenofprolist % numofpic;  //商品列表长度除以每行显示图片数量的余数
		int i=0,j=0;
		for(i=0;i<rownum;i++)
		{
			%>		
	        <tr>
	<%				
			for(j=0;j<numofpic;j++)
			{	
%>
    <td>
    <a target="_blank" href="/MISExampleForJSP/product/buyProduct.jsp?proID=<%=queryProducts.get(i*numofpic+j).getProID()%>&&proName=<%=queryProducts.get(i*numofpic+j).getProName()%>&&price=<%=queryProducts.get(i*numofpic+j).getPrice()%>&&wareNum=<%=queryProducts.get(i*numofpic+j).getWareNum()%>&&proImage=<%=queryProducts.get(i*numofpic+j).getProImage()%>">
      <img src=<%=queryProducts.get(i*numofpic+j).getProImage()%>  alt="无图片" width=200 height=250>
      <p align="center"><%=queryProducts.get(i*numofpic+j).getProName()%></p>
      <p align="center"><%=queryProducts.get(i*numofpic+j).getPrice()%></p>
    </a>      
    </td>
<%	
		     }
%>		
        </tr>
<%	
		}
%>		
		 <tr>
<%		
		for(j=lenofprolist-modofprolist;j<lenofprolist;j++)
		{	
%>
    	<td>
    <a target="_blank" href="/MISExampleForJSP/product/buyProduct.jsp?proID=<%=queryProducts.get(j).getProID()%>&&proName=<%=queryProducts.get(j).getProName()%>&&price=<%=queryProducts.get(j).getPrice()%>&&wareNum=<%=queryProducts.get(j).getWareNum()%>&&proImage=<%=queryProducts.get(j).getProImage()%>">
        <img src=<%=queryProducts.get(j).getProImage()%>  alt="无图片" width=200 height=300>
        <p align="center"><%=queryProducts.get(j).getProName()%></p>
        <p align="center"><%=queryProducts.get(j).getPrice()%></p>
        
        </a>      
        </td>
<%        
        }
%>
		</tr>		
<%	
		
	}
%>
    <tr align="left">
        <td colspan="9">
            共${totalRows}行&nbsp;
            第${currentPage}页&nbsp;
            共${totalPage}页&nbsp;
   <c:if test="${queryType eq 'condition'}">         
           <a href="/MISExampleForJSP/QueryProductServlet?queryType=condition&&queryName=${queryName}&&queryValue=${queryValue}&&currentPage=${currentPage}&&pagerTurning=firtPage&&queryGraph=yes">首页</a>             
           <a href="/MISExampleForJSP/QueryProductServlet?queryType=condition&&queryName=${queryName}&&queryValue=${queryValue}&&currentPage=${currentPage}&&pagerTurning=lastPage&&queryGraph=yes">上一页</a>            
           <a href="/MISExampleForJSP/QueryProductServlet?queryType=condition&&queryName=${queryName}&&queryValue=${queryValue}&&currentPage=${currentPage}&&pagerTurning=nextPage&&queryGraph=yes">下一页</a>
           <a href="/MISExampleForJSP/QueryProductServlet?queryType=condition&&queryName=${queryName}&&queryValue=${queryValue}&&currentPage=${currentPage}&&pagerTurning=endPage&&queryGraph=yes">尾页</a>
   </c:if>
   <c:if test="${queryType eq 'all'}">         
           <a href="/MISExampleForJSP/QueryProductServlet?queryType=all&&currentPage=${currentPage}&&pagerTurning=firtPage&&queryGraph=yes">首页</a>             
           <a href="/MISExampleForJSP/QueryProductServlet?queryType=all&&currentPage=${currentPage}&&pagerTurning=lastPage&&queryGraph=yes">上一页</a>            
           <a href="/MISExampleForJSP/QueryProductServlet?queryType=all&&currentPage=${currentPage}&&pagerTurning=nextPage&&queryGraph=yes">下一页</a>
           <a href="/MISExampleForJSP/QueryProductServlet?queryType=all&&currentPage=${currentPage}&&pagerTurning=endPage&&queryGraph=yes">尾页</a>
   </c:if>   
        </td>
    </tr> 
</table>
</body>
</html>
