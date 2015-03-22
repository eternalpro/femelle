<%@tag pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<div class="page-sidebar-wrapper">
    <div class="page-sidebar md-shadow-z-2-i  navbar-collapse collapse">
        <ul class="page-sidebar-menu " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
            <li class="start ">
                <a href="${ctx}/admin">
                    <i class="icon-settings"></i>
                    <span class="title">控制面板</span>
                </a>
            </li>
            <li class="active">
                <a href="${ctx}/admin">
                    <i class="icon-home"></i>
                    <span class="title">站点设置</span>
                    <span class="arrow open"></span>
                </a>
                <ul class="sub-menu" style="display: block;">
                    <li>
                        <a href="${ctx}/admin">首页</a>
                    </li>
                    <li>
                        <a href="${ctx}/admin?#tab_1">品牌介绍</a>
                    </li>
                </ul>
            </li>
            <li class="">
                <a href="#">
                    <i class="icon-picture"></i>
                    <span class="title">图片管理</span>
                </a>
            </li>
            <li class="">
                <a href="${ctx}/admin/products">
                    <i class="icon-present"></i>
                    <span class="title">产品管理</span>
                </a>
            </li>
            <li class="">
                <a href="#">
                    <i class="icon-wallet"></i>
                    <span class="title">画册管理</span>
                </a>
            </li>
            <li class="">
                <a href="${ctx}/admin/news">
                    <i class="icon-docs"></i>
                    <span class="title">资讯管理</span>
                    <span class="arrow open"></span>
                </a>
                <ul class="sub-menu" style="display: block;">
                    <li>
                        <a href="charts_amcharts.html">时尚动态</a>
                    </li>
                    <li>
                        <a href="charts_flotcharts.html">新闻资讯</a>
                    </li>
                </ul>
            </li>
            <li class="">
                <a href="#">
                    <i class="icon-users"></i>
                    <span class="title">会员管理</span>
                </a>
            </li>
        </ul>
    </div>
</div>
