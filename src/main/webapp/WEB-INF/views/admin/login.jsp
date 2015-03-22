<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<html>
<head>
    <title>控制面板</title>
    <common:css-st></common:css-st>
    <link rel="stylesheet" href="${ctx}/resources/mt/css/lock2.css"/>
    <link rel="stylesheet" href="${ctx}/resources/mt/css/animate.css"/>
</head>
<body>
<div class="page-lock animated zoomIn">
    <div class="page-logo">
        <h3><strong>北京法米拉服装服饰有限公司</strong></h3>
    </div>
    <div class="page-body ">
        <img class="page-lock-img" src="${ctx}/resources/mt/img/profile.jpg" alt="">
        <div class="page-lock-info">
            <h1>控制面板</h1>
			<span class="email">对整个站点进行相关设置</span>
            <br/>
            <br/>
            <form class="form-inline" action="index.html">
                <div class="input-group input-medium">
                    <input type="text" class="form-control" placeholder="输入密码">
					<span class="input-group-btn">
					<button type="submit" class="btn blue icn-only"><i class="m-icon-swapright m-icon-white"></i></button>
					</span>
                </div>
                <!-- /input-group -->
                <div class="relogin">
                    <a href="#" id="noAdmin">
                        没有管理员账号?
                    </a>
                </div>
            </form>
        </div>
    </div>
    <div class="page-footer-custom">
        2015 &copy; alpha-femelle. Admin Dashboard Settings.
    </div>
</div>

<common:js-st></common:js-st>
<script src="${ctx}/resources/mt/js/lock.js"></script>
<script>
    (function(){
        Lock.init();
        $('#noAdmin').on('click', function(e){
            e.preventDefault();
            bootbox.alert('<h4 class="text-danger"><strong>请联系管理员！</strong></h4>');
        });
    })();
</script>
</body>
</html>
