<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>取消订阅</title>
</head>
<body>
<form action="${ctx}/deleteEmail" style="margin-top: 20px;">
    请输入您的邮件地址：
    <input type="text" name="email"/>
    <button>取消订阅</button>
</form>
</body>
</html>
