<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="Products/Create" method="POST">
 <label for="name">productName</label>
        <input type="text"  name="name" required><br><br>
        
        <label for="id">CategoryId</label>
        <input type="text" name="categoryid" required><br><br>
        
        <button type="submit">Button</button>
  </form>
  
</body>
</html>