<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add User</title>
</head>
<body>
    <h2>Add User</h2>
    <form action="UserController?action=add" method="post">
        Name: <input type="text" name="name"><br>
        Email: <input type="text" name="email"><br>
        Country: <input type="text" name="country"><br>
        <input type="submit" value="Add User">
    </form>
</body>
</html>
