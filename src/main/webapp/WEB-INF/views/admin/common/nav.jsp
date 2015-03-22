<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<div class="page-header md-shadow-z-1-i navbar navbar-fixed-top">
    <div class="page-header-inner">
        <div class="page-logo">
            <a href="${ctx}">
                <h2>后台管理</h2>
            </a>
            <div class="menu-toggler sidebar-toggler">
            </div>
        </div>
        <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse"
           data-target=".navbar-collapse">
        </a>
        <div class="page-top">
            <div class="top-menu">
                <ul class="nav navbar-nav pull-right">
                    <li class="dropdown dropdown-user dropdown-dark">
                        <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"
                           data-close-others="true">
						<span class="username username-hide-on-mobile">
						管理员 </span>
                            <img alt="" class="img-circle" src="${ctx}/resources/mt/img/avatar9.jpg"/>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-default">
                            <li>
                                <a href="extra_profile.html">
                                    <i class="icon-user"></i> 密码设置 </a>
                            </li>

                            <li class="divider">
                            </li>
                            <li>
                                <a href="login.html">
                                    <i class="icon-key"></i> 登出 </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
