<%@ page contentType="text/html; charset=gb2312" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>�û���¼</title>
		<script language="javascript">
		//�ж�������û����������Ƿ�Ϸ�
		function check()
		{
			if(login_form.userID.value == "")
			{//�ж��û����Ƿ�Ϊ��
				alert("�û�������Ϊ�գ�");
				login_form.userID.focus();
			}
			else if(login_form.userPassword.value == "")
			{//�ж������Ƿ�Ϊ��
				alert("�û����벻��Ϊ�գ�");
				login_form.userPassword.focus();
			}
			else
			{
				//������תĿ��ҳ��
				login_form.action="/MISExampleForJSP/LoginCheck";
			}
		}
		</script>
	</head>
<%
//	String message=request.getParameter("message");
%>
	<body>
    	<p align="center"><font color="red" size="5">${errorMsg}</font></p>
		<p align="center"><font size="5">����ͼ�������Ϣϵͳ</font></p>
		<div align="center">
		<form name="login_form" method="post" onSubmit="check()" >
		<table width="60%" border="0">
			<tr>
			<td width="50%" align="right">�������û��˺ţ�</td>
			<td width="50%" align="left"><input type="text" name="userID"></td>
			</tr>
			<tr>
			<td width="50%" align="right">���������룺</td>
			<td width="50%" align="left"><input type="password" name="userPassword"></td>
			</tr>	
			
			<tr>
			<td width="50%" align="right">���ͣ�</td>
			<td width="50%" align="left">
            <input type="radio" name="userType" value="employee" checked>ְԱ
            
 			<input type="radio" name="userType" value="customer">�û�
            <input type="radio" name="userType" value="supplier">����Ա
            </td>
			</tr>	
			
 		
			<tr>
			<td width="50%" align="center" colspan="2">
			<br>
			<input type="submit" name="sub" value="��¼">&nbsp;&nbsp;
			<input type="reset" name="res" value="����">
			</td>			
			</tr>
		</table>
		</form>
		     <%
     Object message = request.getAttribute("message");
     if(message!=null && !"".equals(message)){
 
  %>
      <script type="text/javascript">
          alert("<%=message%>");
      </script>
  <%} %>
		</div>
	</body>
</html>
