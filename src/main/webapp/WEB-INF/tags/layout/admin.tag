<%@tag pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<%@ attribute name="main" fragment="true" description="主体信息，注意：用jsp:attribute调用，不要把此标签设置到属性上" %>
<%@ attribute name="css" fragment="true" description="需要引入的额外的css信息或自定义的css，注意：用jsp:attribute调用，不要把此标签设置到属性上" %>
<%@ attribute name="js" fragment="true" description="需要引入的额外的js信息或自定义的js，注意：用jsp:attribute调用，不要把此标签设置到属性上" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>后台管理 - 法米拉服装服饰官网</title>
    <common:css-st></common:css-st>
    <jsp:invoke fragment="css"/>
</head>
<body>
    <jsp:include page="../../views/admin/common/nav.jsp"/>
    <div class="page-container">
        <jsp:include page="../../views/admin/common/sidebar.jsp" />

        <jsp:invoke fragment="main"/>

    </div>
    <common:js-st></common:js-st>
    <jsp:invoke fragment="js"/>
    <script>
        (function() {
            Metronic.init(); // init metronic core components
            Layout.init(); // init current layout
        })();
    </script>
</body>
</html>