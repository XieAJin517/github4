<%@ page language="java" contentType="text/html; charset=gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="static.html" %>
<jsp:forward page="action.jsp">
<jsp:param name="a1", value="<%=request.getParameter("name")%>"/>
<jsp:param name="a2", value="<%=request.getParameter("password")%>"/>
</jsp:forward>
</body>
</htm>