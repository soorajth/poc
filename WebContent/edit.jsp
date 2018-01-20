<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String id=request.getParameter("id"); %>
<% String name=request.getParameter("name"); %>
<% String age=request.getParameter("age"); %>
<% String city=request.getParameter("city"); %>
<form method="get" action="addedit.jsp">
	<fieldset>
	<legend>Edit Person</legend>
		Name:<input name="name" value="<%=name%>">
		Age:<input name="age" value="<%=age%>">
		City:<input name="city" value="<%=city%>">
		<input type="submit" value="Edit Person">
		<input name="id" value="<%=id%>" type="hidden">
	</fieldset>
</form>
</body>
</html>