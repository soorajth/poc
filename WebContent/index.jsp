<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="get" action="addedit.jsp">
	<fieldset>
	<legend>Add Person</legend>
		Name:<input name="name">
		Age:<input name="age">
		City:<input name="city">
		<input type="submit" value="Add Person">
	</fieldset>
	
	<%@ page import ="java.sql.*" %>
	<%@ page import ="javax.sql.*" %>
	<%
		Class.forName("com.mysql.jdbc.Driver"); 
		java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emp","root",""); 
		Statement st= con.createStatement(); 
		 
		ResultSet rs = st.executeQuery("select * from emp");
		
	%>
	
	<br />
	<br />
	<fieldset>
	<legend>Person List</legend>
		<table width="500" border="1">
			<tr><td>Name</td><td>Age</td><td>city</td><td>Edit</td><td>Delete</td></tr>
			<%
			while(rs.next()){
				%>
				
				<tr>
					<td><%=rs.getString("name") %></td>
					<td><%=rs.getString("age") %></td>
					<td><%=rs.getString("city") %></td>
					<td>
						<a href="edit.jsp?id=<%=rs.getString("id") %>&name=<%=rs.getString("name") %>&age=<%=rs.getString("age") %>&city=<%=rs.getString("city") %>">Edit Record</a>
					</td>
					<td>
						<a href="delete.jsp?id=<%=rs.getString("id") %>">Delete Record</a>
					</td>
				</tr>
				
				<%
			}
			%>
		</table>
	</fieldset>
</form>
</body>
</html>