<%@tag pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<div class="page-header md-shadow-z-1-i navbar navbar-fixed-top">
    <div class="page-header-inner">
        <div class="page-logo">
            <a href="${ctx}/admin">
                <h2>后台管理</h2>
            </a>
            <div class="menu-toggler sidebar-toggler">
            </div>
        </div>
        <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse"
           data-target=".navbar-collapse">
        </a>
        <div class="page-actions">
            <div class="btn-group">
                <a  class="btn btn-primary btn-sm dropdown-toggle" href="${ctx}">
                    <i class="fa fa-arrow-circle-o-left"></i><span class="hidden-sm hidden-xs">返回前台</span>
                </a>
            </div>
        </div>
        <div class="page-top">
            <div class="top-menu">
                <ul class="nav navbar-nav pull-right">
                    <li class="dropdown dropdown-user dropdown-dark">
                        <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"
                           data-close-others="true">
						<span class="username username-hide-on-mobile">
						管理员 </span>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-default">
                            <li>
                                <a href="${ctx}/admin/password" id="setPassword">
                                    <i class="icon-user"></i> 密码设置 </a>
                            </li>

                            <li class="divider">
                            </li>
                            <li>
                                <a href="${ctx}/admin/logout">
                                    <i class="icon-key"></i> 登出 </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
