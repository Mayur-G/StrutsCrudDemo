<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
    <title>Index Page</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <s:if test="#session.user != null">
            <div class="d-flex justify-content-between">
                <h2>Welcome, <s:property value="#session.user" />!</h2>
                <a href="logout" class="btn btn-primary">Logout</a>
            </div>
        </s:if>
        <s:else>
            <h2>Welcome to the Struts CRUD Demo</h2>
            <a href="login.jsp" class="btn btn-primary">Login</a>
        </s:else>
        <!-- Your content here -->
    </div>
    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
