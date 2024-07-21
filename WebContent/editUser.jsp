<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.example.dao.UserDAO"%>
<%@ page import="com.example.model.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit User</title>
</head>
<body>
    <%
        String userId = request.getParameter("id");
        UserDAO dao = new UserDAO();
        User user = dao.getUserById(Integer.parseInt(userId));
    %>
    <h2>Edit User</h2>
    <form action="UserController?action=edit" method="post">
        <input type="hidden" name="id" value="<%=user.getId()%>">
        Name: <input type="text" name="name" value="<%=user.getName()%>"><br>
        Email: <input type="text" name="email" value="<%=user.getEmail()%>"><br>
        Country: <input type="text" name="country" value="<%=user.getCountry()%>"><br>
        <input type="submit" value="Update User">
    </form>
</body>
</html>
