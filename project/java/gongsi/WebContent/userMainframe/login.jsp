<%@ page contentType="text/html; charset=gb2312" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>用户登录</title>
		<script language="javascript">
		//判断输入的用户名和密码是否合法
		function check()
		{
			if(login_form.userID.value == "")
			{//判断用户名是否为空
				alert("用户名不能为空！");
				login_form.userID.focus();
			}
			else if(login_form.userPassword.value == "")
			{//判断密码是否为空
				alert("用户密码不能为空！");
				login_form.userPassword.focus();
			}
			else
			{
				//设置跳转目的页面
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
		<p align="center"><font size="5">智能图书管理信息系统</font></p>
		<div align="center">
		<form name="login_form" method="post" onSubmit="check()" >
		<table width="60%" border="0">
			<tr>
			<td width="50%" align="right">请输入用户账号：</td>
			<td width="50%" align="left"><input type="text" name="userID"></td>
			</tr>
			<tr>
			<td width="50%" align="right">请输入密码：</td>
			<td width="50%" align="left"><input type="password" name="userPassword"></td>
			</tr>	
			
			<tr>
			<td width="50%" align="right">类型：</td>
			<td width="50%" align="left">
            <input type="radio" name="userType" value="employee" checked>职员
            
 			<input type="radio" name="userType" value="customer">用户
            <input type="radio" name="userType" value="supplier">管理员
            </td>
			</tr>	
			
 		
			<tr>
			<td width="50%" align="center" colspan="2">
			<br>
			<input type="submit" name="sub" value="登录">&nbsp;&nbsp;
			<input type="reset" name="res" value="重填">
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
