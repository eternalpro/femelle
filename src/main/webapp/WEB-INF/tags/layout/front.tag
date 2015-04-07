<%@tag pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<%@ attribute name="main" fragment="true" description="主体信息，注意：用jsp:attribute调用，不要把此标签设置到属性上" %>
<%@ attribute name="css" fragment="true" description="需要引入的额外的css信息或自定义的css，注意：用jsp:attribute调用，不要把此标签设置到属性上" %>
<%@ attribute name="js" fragment="true" description="需要引入的额外的js信息或自定义的js，注意：用jsp:attribute调用，不要把此标签设置到属性上" %>
<%@ attribute name="menu" description="菜单" required="true" %>
<!DOCTYPE html>
<html>
<head>
    <title>法米拉服装服饰官网</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name=“robots” CONTENT=“INDEX,FOLLOW”>
    <meta name="keywords" content="法米拉,服装,服饰,女装,femelle" />
    <meta name="description" content="法米拉,服装,服饰,女装,femelle" />
    <meta property="wb:webmaster" content="a5ed3baea38174d0" />
    <common:css></common:css>
    <jsp:invoke fragment="css"/>
</head>
<body>
    <layout:header menu="${menu}"/>
    <div class="main-container">
        <jsp:invoke fragment="main"/>
    </div>
    <layout:footer />
    <common:js></common:js>
    <script type="text/javascript">
        $('.fancybox').fancybox({
            openEffect	: 'elastic',
            closeEffect	: 'elastic'
        });

        $('#nav-menu .menu > li').hover(function () {
            $(this).find('.children').animate({opacity: 'show', height: 'show'}, 200);
            $(this).find('.xialaguang').addClass('navhover');
        }, function () {
            $('.children').stop(true, true).hide();
            $('.xialaguang').removeClass('navhover');
        });


        $('#wwA').on('mouseover', function(e){
            e.preventDefault();
            $('#wwImg').show();
        });
        $('#wwA').on('mouseleave', function(e){
            e.preventDefault();
            $('#wwImg').hide();
        });
    </script>
    <jsp:invoke fragment="js"/>
</body>
</html>