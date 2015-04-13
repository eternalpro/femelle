<%@tag pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<%@ attribute name="menu" type="java.lang.String" %>
<div class="page-sidebar-wrapper">
    <div class="page-sidebar md-shadow-z-2-i  navbar-collapse collapse">
        <ul class="page-sidebar-menu " data-keep-expanded="false" data-auto-scroll="false" data-slide-speed="200">
            <li class="start ">
                <a href="${ctx}/admin">
                    <i class="icon-settings"></i>
                    <span class="title">控制面板</span>
                </a>
            </li>
            <li <c:if test="${menu eq 'index'}">class="active" </c:if>>
                <a href="${ctx}/admin">
                    <i class="icon-home"></i>
                    <span class="title">站点设置</span>
                </a>
            </li>
            <li <c:if test="${menu eq 'shop'}">class="active" </c:if>>
                <a href="${ctx}/admin/shop">
                    <i class="icon-basket"></i>
                    <span class="title">门店管理</span>
                </a>
            </li>

            <li class="">
                <a href="#">
                    <i class="icon-eye"></i>
                    <span class="title">宣传视频</span>
                </a>
            </li>
            <li class="<c:if test='${menu eq "product"}'>active </c:if>">
                <a href="${ctx}/admin/product">
                    <i class="icon-present"></i>
                    <span class="title">产品管理</span>
                    <span class="arrow <c:if test='${menu eq "product"}'>open </c:if>"></span>
                </a>
                <ul class="sub-menu" style="display: <c:if test='${menu ne "product"}'>none </c:if>;">
                    <li>
                        <a href="${ctx}/admin/season">当季推荐</a>
                    </li>
                    <li>
                        <a href="${ctx}/admin/product">所有产品</a>
                    </li>
                </ul>
            </li>

            <li class="<c:if test='${menu eq "album"}'>active </c:if>">
                <a href="${ctx}/admin/album">
                    <i class="icon-wallet"></i>
                    <span class="title">搭配图集</span>
                </a>
            </li>

            <li class="<c:if test='${menu eq "news"}'>active </c:if>">
                <a href="${ctx}/admin/news">
                    <i class="icon-docs"></i>
                    <span class="title">资讯管理</span>
                </a>
            </li>

            <li class="<c:if test='${menu eq "member"}'>active </c:if>">
                <a href="${ctx}/admin/member">
                    <i class="icon-users"></i>
                    <span class="title">会员管理</span>
                </a>
            </li>

            <li class="<c:if test='${menu eq "mail"}'>active </c:if>">
                <a href="${ctx}/admin/mail">
                    <i class="icon-envelope"></i>
                    <span class="title">邮件设置</span>
                </a>
            </li>
        </ul>
    </div>
</div>
