<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Users List</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h2 class="mb-4">Users List</h2>
        <a href="addUser.jsp" class="btn btn-primary mb-3">Add New User</a>
        <table class="table table-bordered table-striped">
            <thead class="thead-dark">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Country</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <s:iterator value="userList">
                    <tr>
                        <td><s:property value="id"/></td>
                        <td><s:property value="name"/></td>
                        <td><s:property value="email"/></td>
                        <td><s:property value="country"/></td>
                        <td>
                            <a href="editUser.jsp?id=<s:property value='id'/>" class="btn btn-sm btn-warning">Edit</a>
                            <a href="deleteUser?id=<s:property value='id'/>" class="btn btn-sm btn-danger">Delete</a>
                        </td>
                    </tr>
                </s:iterator>
            </tbody>
        </table>
          <br>
   		  <br>
      <a href="logout.jsp?id=<s:property value='id'/>" class="btn btn-sm btn-warning">Logout</a>
  
    </div>
    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
