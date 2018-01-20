<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>

<body>
<%! String name = ""; %>
<%! String age = ""; %>
<%! String city = ""; %>
<%! int id = 0; %>

<% String name=request.getParameter("name"); %>
<% String age=request.getParameter("age"); %>
<% String city=request.getParameter("city"); %>
<% 
 
   if(request.getParameterMap().containsKey("id")){ 
	id=Integer.parseInt(request.getParameter("id"));
	
  }
//out.print(request.getParameter("id"));
//out.print(id);
%>

<%
	Class.forName("com.mysql.jdbc.Driver"); 
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emp","root",""); 
	Statement st= con.createStatement(); 
	if(id > 0) {
		st.executeUpdate("update emp set name='"+name+"',age='"+age+"',city='"+city+"' where id='"+id+"'");
	}else{
		st.executeUpdate("insert into emp(name,age,city) values ('"+name+"','"+age+"','"+city+"')");
	}
	response.sendRedirect("index.jsp");
%>
</body>
</html>
