<%@ page contentType="text/html; charset=gb2312" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>Insert title here</title>
<style>
ul{ list-style-type:none; }
#supplierList { display:none; } /*����ҳʱ���ز˵���*/
</style>
<script type="text/javascript">
var hideSupplier=true;
function displayOrHideSupplier() {
   var supplierList=document.getElementById("supplierList");
   if (hideSupplier) {
	   supplierList.style.display="block";
	   hideSupplier=false;
   }else {
	   supplierList.style.display="none";
	   hideSupplier=true;
   }
}
</script>
</head>
<body>
 <ul>
       <li><a style="color:blue;cursor:pointer;" onclick="displayOrHideSupplier();">��Ӧ�̹���</a>
           <ul id="supplierList">
               <li><a href="/MISExampleForJSP/supplier/addSupplier.jsp?operator=add" target="supplierOperation">��ӹ�Ӧ����Ϣ</a></li>
               <li><a href="/MISExampleForJSP/GetSupplierListServlet?nextPage=/supplier/modifySupplier.jsp&operator=modify" target="supplierOperation">�޸Ĺ�Ӧ����Ϣ</a></li>
               <li><a href="/MISExampleForJSP/GetSupplierListServlet?nextPage=/supplier/deleteSupplier.jsp&operator=delete" target="supplierOperation">ɾ����Ӧ����Ϣ</a><li>
               <li><a href="/MISExampleForJSP/supplier/querySupplier.jsp" target="supplierOperation">��ѯ��Ӧ����Ϣ</a></li>
            </ul>
        </li>
</ul>
</body>
</html>