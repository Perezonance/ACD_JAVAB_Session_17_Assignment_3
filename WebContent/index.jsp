<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "dbUtilities.DBUtility, java.io.File, java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		DBUtility db = new DBUtility(new File("dbAccess.properties"));
		ResultSet rs = DBUtility.executeQuery("SELECT * FROM `springjdbc`.`employees`");
		out.println("<h1>Employees Table</h1><br>" + DBUtility.printResultSet(rs));
	%>
</body>
</html>