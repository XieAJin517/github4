<%@ page contentType="text/html; charset=gb2312" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>Insert title here</title>
<style>
ul{ list-style-type:none; }
#productList { display:none; } /*打开网页时隐藏菜单项*/
#categoryList{ display:none; } /*打开网页时隐藏菜单项*/
#warehoseList{ display:none; } /*打开网页时隐藏菜单项*/
#shelveList  { display:none; } /*打开网页时隐藏菜单项*/
#latticeList { display:none; } /*打开网页时隐藏菜单项*/
#warenumList { display:none; } /*打开网页时隐藏菜单项*/
#saleOderList{ display:none; } /*打开网页时隐藏菜单项*/
#employeeList{ display:none; } /*打开网页时隐藏菜单项*/
#analysisList{ display:none; } /*打开网页时隐藏菜单项*/
#saleOderAnalysisList{ display:none; } /*打开网页时隐藏菜单项*/
</style>
<script type="text/javascript">
var hideProduct=true;
function displayOrHideProduct() {
   var productList=document.getElementById("productList");
   if (hideProduct) {
	   productList.style.display="block";
	   hideProduct=false;
   }else {
	   productList.style.display="none";
	   hideProduct=true;
   }
}
var hideCategory=true;
function displayOrHideCategory() {
   var categoryList=document.getElementById("categoryList");
   if (hideCategory) {
	   categoryList.style.display="block";
	   hideCategory=false;
   }else {
	   categoryList.style.display="none";
	   hideCategory=true;
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

var hideShelve=true
function displayOrHideshelve(){
	var shelveList=document.getElementById("shelveList");
	if(hideShelve){
		shelveList.style.display="block";
		hideShelve=false;
	}else{
		shelveList.style.display="none";
		hideShelve=true;
	}
}

var hideLattice=true
function displayOrHidelattice(){
	var latticeList=document.getElementById("latticeList");
	if(hideLattice){
		latticeList.style.display="block";
		hideLattice=false;
	}else{
		latticeList.style.display="none";
		hideLattice=true;
	}
}


var hideSaleOder=true;
function displayOrHideSaleOrder() {
   var saleOderList=document.getElementById("saleOderList");
   if (hideSaleOder) {
	   saleOderList.style.display="block";
	   hideSaleOder=false;
   }else {
	   saleOderList.style.display="none";
	   hideSaleOder=true;
   }
}

var hideEmployee=true;
function displayOrHideEmployee() {
   var employeeList=document.getElementById("employeeList");
   if (hideEmployee) {
	   employeeList.style.display="block";
	   hideEmployee=false;
   }else {
	   employeeList.style.display="none";
	   hideEmployee=true;
   }
}

var hideAnalysis=true;
function displayOrHideAnlysis() {
   var analysisList=document.getElementById("analysisList");
   if (analysisList) {
	   analysisList.style.display="block";
	   hideAnalysis=false;
   }else {
	   analysisList.style.display="none";
	   hideAnalysis=true;
   }
}

var hideSaleOderAnalysis=true;
function displayOrHideSaleOrderAnalysis() {
   var saleOderAnalysisList=document.getElementById("saleOderAnalysisList");
   if (hideSaleOderAnalysis) {
	   saleOderAnalysisList.style.display="block";
	   hideSaleOderAnalysis=false;
   }else {
	   saleOderAnalysisList.style.display="none";
	   hideSaleOderAnalysis=true;
   }
}



</script>
</head>
<body>
   <ul>
       <li><a style="color:blue;cursor:pointer;" onclick="displayOrHideProduct();">商品管理</a>
           <ul id="productList">
               <li><a href="/MISExampleForJSP/GetCategoryListServlet?nextPage=/product/addProduct.jsp&operator=add" target="employeeOperation">添加商品</a></li>
               <li><a href="/MISExampleForJSP/GetCategoryListServlet?nextPage=/product/modifyProduct.jsp&operator=modify" target="employeeOperation">修改商品</a></li>
               <li><a href="/MISExampleForJSP/GetCategoryListServlet?nextPage=/product/deleteProduct.jsp&operator=delete" target="employeeOperation">删除商品</a><li>
               <li><a href="/MISExampleForJSP/product/queryProduct.jsp" target="employeeOperation">查询商品</a></li>
            </ul>
        </li>
        <li><a style="color:blue;cursor:pointer;" onclick="displayOrHideCategory();">类别管理</a>
           <ul id="categoryList">
               <li><a href="/MISExampleForJSP/GetCategoryListServlet?nextPage=/category/addCategory.jsp&operator=add" target="employeeOperation">添加类别</a></li>
               <li><a href="/MISExampleForJSP/GetCategoryListServlet?nextPage=/category/modifyCategory.jsp&operator=modify" target="employeeOperation">修改类别</a></li>
               <li><a href="/MISExampleForJSP/GetCategoryListServlet?nextPage=/category/deleteCategory.jsp&operator=delete"target="employeeOperation">删除类别</a><li>
               <li><a href="/MISExampleForJSP/category/queryCategory.jsp" target="employeeOperation">查询类别</a></li>
            </ul>
        </li>
        
        <li><a style="color:blue;cursor:pointer;" onclick="displayOrHidewarehose();">仓库管理</a>
        <ul id="warehoseList">
          <li><a href="/MISExampleForJSP/warehose/addWarehose.jsp?operator=add" target="employeeOperation">添加仓库</a></li>
          <li><a href="/MISExampleForJSP/GetWarehoseListServlet?nextPage=/warehose/modifyWarehose.jsp&operator=modify" target="employeeOperation">修改仓库</a></li>
          <li><a href="/MISExampleForJSP/GetWarehoseListServlet?nextPage=/warehose/deleteWarehose.jsp&operator=delete"target="employeeOperation">删除仓库</a></li>
          <li><a href="/MISExampleForJSP/warehose/queryWarehose.jsp" target="employeeOperation">查询仓库</a></li>
        </ul>
        </li>
        
      <li><a style="color:blue;cursor:pointer;" onclick="displayOrHideshelve();">货架管理</a>
        <ul id="shelveList">
          <li><a href="/MISExampleForJSP/GetShelveListServlet?nextPage=/shelve/addShelve.jsp&operator=add" target="employeeOperation">添加货架</a></li>
          <li><a href="/MISExampleForJSP/GetShelveListServlet?nextPage=/shelve/modifyShelve.jsp&operator=modify" target="employeeOperation">修改货架</a></li>
          <li><a href="/MISExampleForJSP/GetShelveListServlet?nextPage=/shelve/deleteShelve.jsp&operator=delete"target="employeeOperation">删除货架</a></li>
          <li><a href="/MISExampleForJSP/shelve/queryShelve.jsp" target="employeeOperation">查询货架</a></li>
        </ul>
        </li> 
        
       <li><a style="color:blue;cursor:pointer;" onclick="displayOrHidelattice();">格子管理</a>
        <ul id="latticeList">
          <li><a href="/MISExampleForJSP/GetShelveListServlet?nextPage=/lattice/addLattice.jsp&operator=add" target="employeeOperation">添加格子</a></li>
          <li><a href="/MISExampleForJSP/GetShelveListServlet?nextPage=/lattice/modifyLattice.jsp&operator=modify" target="employeeOperation">修改格子</a></li>
          <li><a href="/MISExampleForJSP/GetShelveListServlet?nextPage=/lattice/deleteLattice.jsp&operator=delete"target="employeeOperation">删除格子</a></li>
          <li><a href="/MISExampleForJSP/lattice/queryLattice.jsp" target="employeeOperation">查询格子</a></li>
        </ul>
        </li> 
      
     
       
    
      
               
    </ul>

</body>
</html>