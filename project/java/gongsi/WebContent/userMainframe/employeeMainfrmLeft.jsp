<%@ page contentType="text/html; charset=gb2312" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>Insert title here</title>
<style>
ul{ list-style-type:none; }
#productList { display:none; } /*����ҳʱ���ز˵���*/
#categoryList{ display:none; } /*����ҳʱ���ز˵���*/
#warehoseList{ display:none; } /*����ҳʱ���ز˵���*/
#shelveList  { display:none; } /*����ҳʱ���ز˵���*/
#latticeList { display:none; } /*����ҳʱ���ز˵���*/
#warenumList { display:none; } /*����ҳʱ���ز˵���*/
#saleOderList{ display:none; } /*����ҳʱ���ز˵���*/
#employeeList{ display:none; } /*����ҳʱ���ز˵���*/
#analysisList{ display:none; } /*����ҳʱ���ز˵���*/
#saleOderAnalysisList{ display:none; } /*����ҳʱ���ز˵���*/
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
       <li><a style="color:blue;cursor:pointer;" onclick="displayOrHideProduct();">��Ʒ����</a>
           <ul id="productList">
               <li><a href="/MISExampleForJSP/GetCategoryListServlet?nextPage=/product/addProduct.jsp&operator=add" target="employeeOperation">�����Ʒ</a></li>
               <li><a href="/MISExampleForJSP/GetCategoryListServlet?nextPage=/product/modifyProduct.jsp&operator=modify" target="employeeOperation">�޸���Ʒ</a></li>
               <li><a href="/MISExampleForJSP/GetCategoryListServlet?nextPage=/product/deleteProduct.jsp&operator=delete" target="employeeOperation">ɾ����Ʒ</a><li>
               <li><a href="/MISExampleForJSP/product/queryProduct.jsp" target="employeeOperation">��ѯ��Ʒ</a></li>
            </ul>
        </li>
        <li><a style="color:blue;cursor:pointer;" onclick="displayOrHideCategory();">������</a>
           <ul id="categoryList">
               <li><a href="/MISExampleForJSP/GetCategoryListServlet?nextPage=/category/addCategory.jsp&operator=add" target="employeeOperation">������</a></li>
               <li><a href="/MISExampleForJSP/GetCategoryListServlet?nextPage=/category/modifyCategory.jsp&operator=modify" target="employeeOperation">�޸����</a></li>
               <li><a href="/MISExampleForJSP/GetCategoryListServlet?nextPage=/category/deleteCategory.jsp&operator=delete"target="employeeOperation">ɾ�����</a><li>
               <li><a href="/MISExampleForJSP/category/queryCategory.jsp" target="employeeOperation">��ѯ���</a></li>
            </ul>
        </li>
        
        <li><a style="color:blue;cursor:pointer;" onclick="displayOrHidewarehose();">�ֿ����</a>
        <ul id="warehoseList">
          <li><a href="/MISExampleForJSP/warehose/addWarehose.jsp?operator=add" target="employeeOperation">��Ӳֿ�</a></li>
          <li><a href="/MISExampleForJSP/GetWarehoseListServlet?nextPage=/warehose/modifyWarehose.jsp&operator=modify" target="employeeOperation">�޸Ĳֿ�</a></li>
          <li><a href="/MISExampleForJSP/GetWarehoseListServlet?nextPage=/warehose/deleteWarehose.jsp&operator=delete"target="employeeOperation">ɾ���ֿ�</a></li>
          <li><a href="/MISExampleForJSP/warehose/queryWarehose.jsp" target="employeeOperation">��ѯ�ֿ�</a></li>
        </ul>
        </li>
        
      <li><a style="color:blue;cursor:pointer;" onclick="displayOrHideshelve();">���ܹ���</a>
        <ul id="shelveList">
          <li><a href="/MISExampleForJSP/GetShelveListServlet?nextPage=/shelve/addShelve.jsp&operator=add" target="employeeOperation">��ӻ���</a></li>
          <li><a href="/MISExampleForJSP/GetShelveListServlet?nextPage=/shelve/modifyShelve.jsp&operator=modify" target="employeeOperation">�޸Ļ���</a></li>
          <li><a href="/MISExampleForJSP/GetShelveListServlet?nextPage=/shelve/deleteShelve.jsp&operator=delete"target="employeeOperation">ɾ������</a></li>
          <li><a href="/MISExampleForJSP/shelve/queryShelve.jsp" target="employeeOperation">��ѯ����</a></li>
        </ul>
        </li> 
        
       <li><a style="color:blue;cursor:pointer;" onclick="displayOrHidelattice();">���ӹ���</a>
        <ul id="latticeList">
          <li><a href="/MISExampleForJSP/GetShelveListServlet?nextPage=/lattice/addLattice.jsp&operator=add" target="employeeOperation">��Ӹ���</a></li>
          <li><a href="/MISExampleForJSP/GetShelveListServlet?nextPage=/lattice/modifyLattice.jsp&operator=modify" target="employeeOperation">�޸ĸ���</a></li>
          <li><a href="/MISExampleForJSP/GetShelveListServlet?nextPage=/lattice/deleteLattice.jsp&operator=delete"target="employeeOperation">ɾ������</a></li>
          <li><a href="/MISExampleForJSP/lattice/queryLattice.jsp" target="employeeOperation">��ѯ����</a></li>
        </ul>
        </li> 
      
     
       
    
      
               
    </ul>

</body>
</html>