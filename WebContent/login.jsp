<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .form-group {
            display: flex;
            align-items: center;
            margin-bottom: 1rem;
        }
        .form-group label {
            width: 150px;
            margin-right: 10px;
        }
        .form-group .form-control {
            flex: 1;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <h2 class="mb-4">Login</h2>
        <s:form action="listUsers" class="form-horizontal">
            <div class="form-group">
                <label for="username">Username:</label>
                <s:textfield name="username" id="username" cssClass="form-control"/>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <s:password name="password" id="password" cssClass="form-control"/>
            </div>
            <div class="form-group">
                <s:submit value="Login" cssClass="btn btn-primary"/>
            </div>
        </s:form>
    </div>
    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
