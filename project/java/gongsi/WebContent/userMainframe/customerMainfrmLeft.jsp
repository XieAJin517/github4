<%@ page contentType="text/html; charset=gb2312" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>Insert title here</title>
<style>
ul{ list-style-type:none; }
/* #bookList { display:none; } /*����ҳʱ���ز˵���*/ */
#warenumList { display:none; } /*����ҳʱ���ز˵���*/
</style>
<script type="text/javascript">
var hideProduct=true;
function displayOrHideBook() {
   var productList=document.getElementById("bookList");
   if (hideBook) {
	   bookList.style.display="block";
	   hideBook=false;
   }else {
	   bookList.style.display="none";
	   hideBook=true;
   }
}

var hideWarehose=true;
function displayOrHidewarehose(){
	var warehoseList=document.getElementById("warehoseList");
	if(hideWarehose){
		warehoseList.style.display="block";
		hideWarehose=false;
	}else {
		warehoseList.style.display="none";
		hideWarehose=true;
	}
}
var hideManage=true;
function displayOrHideManage() {
   var manageList=document.getElementById("manageList");
   if (hideManage) {
	   manageList.style.display="block";
	   hideManage=false;
   }else {
	   manageList.style.display="none";
	   hideManage=true;
   }
}
</script>
</head>
<body>

	<ul>
		
    	<li><a style="color:green;cursor:pointer;" onclick="displayOrHidebook();">�鼮����</a>
       	<ul id="bookList">
           	<li><a href="/MISExampleForJSP/book/addBook.jsp?nextPage=/book/modifyBook.jsp&operator=add" target="customerOperation">����鼮</a></li>
           	<li><a href="/MISExampleForJSP/book/deleteBook.jsp?nextPage=/book/modifyBook.jsp&operator=delete" target="customerOperation">�޸��鼮</a></li>
           	<li><a href="/MISExampleForJSP/book/modifyBook.jsp?nextPage=/book/modifyBook.jsp&operator=modify" target="customerOperation">ɾ���鼮</a><li>
           	<li><a href="/MISExampleForJSP/book/queryBook.jsp?nextPage=/book/modifyBook.jsp&oerator=query" target="customerOperation">��ѯ�鼮</a></li>
        </ul>
    	</li>
    	
    	<li><a style="color:green;cursor:pointer;" onclick="displayOrHidewarehose();">��λ����</a>
        <ul id="warehoseList">
          <li><a href="/MISExampleForJSP/warehose/addWarehose.jsp?operator=add" target="customerOperation">�����λ</a></li>
          <li><a href="/MISExampleForJSP/GetWarehoseListServlet?nextPage=/warehose/modifyWarehose.jsp&operator=modify" target="customerOperation">�޸���λ</a></li>
          <li><a href="/MISExampleForJSP/GetWarehoseListServlet?nextPage=/warehose/deleteWarehose.jsp&operator=delete" target="customerOperation">ɾ����λ</a></li>
          <li><a href="/MISExampleForJSP/warehose/queryWarehose.jsp" target="customerOperation">��ѯ��λ</a></li>
        </ul>
        </li>
        
         <li><a style="color:green;cursor:pointer;" onclick="displayOrHideManage();">�軹��</a>
           <ul id="manageList">
               <li><a href="/MISExampleForJSP/GetCategoryListServlet?nextPage=/product/addProduct.jsp&operator=add" target="employeeOperation">����</a></li>
               <li><a href="/MISExampleForJSP/GetCategoryListServlet?nextPage=/product/modifyProduct.jsp&operator=modify" target="employeeOperation">����</a></li>
              <!--  <li><a href="/MISExampleForJSP/GetCategoryListServlet?nextPage=/product/deleteProduct.jsp&operator=delete" target="employeeOperation">ɾ����Ʒ</a><li>
               <li><a href="/MISExampleForJSP/product/queryProduct.jsp" target="employeeOperation">��ѯ��Ʒ</a></li> -->
            </ul>
        </li>
    </ul>
</body>
</html>