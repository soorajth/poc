<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%! int id = 0; %>
<% 
 if(request.getParameterMap().containsKey("id")){ 
	id=Integer.parseInt(request.getParameter("id"));
}
%>
<%
	Class.forName("com.mysql.jdbc.Driver"); 
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emp","root",""); 
	Statement st= con.createStatement(); 
	if(id > 0) {
		st.executeUpdate("delete from emp where id='"+id+"'");
	}
	response.sendRedirect("index.jsp");
%>
</body>
</html>