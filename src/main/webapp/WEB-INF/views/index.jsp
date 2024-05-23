<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<h1>Hello world!</h1>
<form action="/login" id="form-submit" method="post">
    user name
    <input type="text" name="username" id="username">
    password
    <input type="password" name="password" id="password">
    <button>Submit</button>
</form>

<%--<script>--%>
<%--    function check(){--%>
<%--        const username = document.getElementById("username").value()--%>
<%--        const password = document.getElementById("password").value()--%>
<%--        const form_submit = document.getElementById("form-submit")--%>
<%--        if(username === "admin"&& password === "admin"){--%>
<%--            alert("Dang nhap thanh cong")--%>
<%--            form_submit.submit()--%>
<%--        }else {--%>
<%--            alert("Dang nhap that bai")--%>
<%--        }--%>
<%--    }--%>
<%--</script>--%>
</body>
</html>