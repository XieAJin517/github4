<%@page pageEncoding="GBK" contentType="text/html; charset=GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="bean.Product,java.util.List" %>
<%@ page import="java.util.List" %>
<%@ page import="bean.Product" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>��Ʒ��ѯ</title>
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
            <option value="proID">��Ʒ���</option>
            <option value="proName">��Ʒ����</option>
            <option value="category.kindId">�����</option>
            <option value="kindName">�������</option>
            <option value="price">����</option>
        </select>
        <input type="text" name="searchValue" value="" size="10"/>
        <input type="button" value="��ѯ" onClick="doSearch();">
    </td>
</tr>
</table>
<table>

<%
List<Product> queryProducts=(List<Product>) request.getAttribute("queryProducts");
	if (queryProducts!=null)
	{	
		int lenofprolist=queryProducts.size();  //��Ʒ�б���
		int numofpic=4;  //ÿ����ʾͼƬ����
		int rownum=lenofprolist / numofpic;   //��Ʒ�б�����ÿ����ʾͼƬ�����ı���
		int modofprolist=lenofprolist % numofpic;  //��Ʒ�б��ȳ���ÿ����ʾͼƬ����������
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
      <img src=<%=queryProducts.get(i*numofpic+j).getProImage()%>  alt="��ͼƬ" width=200 height=250>
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
        <img src=<%=queryProducts.get(j).getProImage()%>  alt="��ͼƬ" width=200 height=300>
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
            ��${totalRows}��&nbsp;
            ��${currentPage}ҳ&nbsp;
            ��${totalPage}ҳ&nbsp;
   <c:if test="${queryType eq 'condition'}">         
           <a href="/MISExampleForJSP/QueryProductServlet?queryType=condition&&queryName=${queryName}&&queryValue=${queryValue}&&currentPage=${currentPage}&&pagerTurning=firtPage&&queryGraph=yes">��ҳ</a>             
           <a href="/MISExampleForJSP/QueryProductServlet?queryType=condition&&queryName=${queryName}&&queryValue=${queryValue}&&currentPage=${currentPage}&&pagerTurning=lastPage&&queryGraph=yes">��һҳ</a>            
           <a href="/MISExampleForJSP/QueryProductServlet?queryType=condition&&queryName=${queryName}&&queryValue=${queryValue}&&currentPage=${currentPage}&&pagerTurning=nextPage&&queryGraph=yes">��һҳ</a>
           <a href="/MISExampleForJSP/QueryProductServlet?queryType=condition&&queryName=${queryName}&&queryValue=${queryValue}&&currentPage=${currentPage}&&pagerTurning=endPage&&queryGraph=yes">βҳ</a>
   </c:if>
   <c:if test="${queryType eq 'all'}">         
           <a href="/MISExampleForJSP/QueryProductServlet?queryType=all&&currentPage=${currentPage}&&pagerTurning=firtPage&&queryGraph=yes">��ҳ</a>             
           <a href="/MISExampleForJSP/QueryProductServlet?queryType=all&&currentPage=${currentPage}&&pagerTurning=lastPage&&queryGraph=yes">��һҳ</a>            
           <a href="/MISExampleForJSP/QueryProductServlet?queryType=all&&currentPage=${currentPage}&&pagerTurning=nextPage&&queryGraph=yes">��һҳ</a>
           <a href="/MISExampleForJSP/QueryProductServlet?queryType=all&&currentPage=${currentPage}&&pagerTurning=endPage&&queryGraph=yes">βҳ</a>
   </c:if>   
        </td>
    </tr> 
</table>
</body>
</html>
