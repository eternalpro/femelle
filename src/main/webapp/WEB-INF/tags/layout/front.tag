<%@tag pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<%@ attribute name="main" fragment="true" description="主体信息，注意：用jsp:attribute调用，不要把此标签设置到属性上" %>
<%@ attribute name="css" fragment="true" description="需要引入的额外的css信息或自定义的css，注意：用jsp:attribute调用，不要把此标签设置到属性上" %>
<%@ attribute name="js" fragment="true" description="需要引入的额外的js信息或自定义的js，注意：用jsp:attribute调用，不要把此标签设置到属性上" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>法米拉服装服饰官网</title>
    <link rel="stylesheet" href="${ctx}/resources/css/bootstrap.css"/>
    <link rel="stylesheet" href="${ctx}/resources/css/app.css"/>
    <jsp:invoke fragment="css"/>
</head>
<body>
    <jsp:invoke fragment="main"/>

    <script src="${ctx}/resources/js/jquery.js"></script>
    <script src="${ctx}/resources/js/bootstrap.js"></script>
    <script src="${ctx}/resources/js/minimit-anima.js"></script>
    <jsp:invoke fragment="js"/>
</body>
</html>