<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Test Deploy Page</title>
</head>
<body>
	<form action="addAlien">
		<input type="text" name="aid"><br>
		<input type="text" name="aname"><br>
		<input type="text" name="tech"><br>
		<input type="submit"><br>
	</form>
	
	<form action="getAlien">
		<input type="text" name="aid"><br>
		<input type="submit"><br>
	</form>
	
	<form action="getByTech">
		<input type="text" name="tech"><br>
		<input type="submit"><br>
	</form>
</body>
</html>
