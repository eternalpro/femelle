<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<ul class="bg-sidebar">
    <li <c:if test="${sidemenu eq 'fashion'}">class="active"</c:if> ><a href="${ctx}/news">&nbsp;&nbsp;● 时尚动态</a></li>
    <li <c:if test="${sidemenu eq 'video'}">class="active"</c:if> ><a href="${ctx}/news/video">&nbsp;&nbsp;● 宣传视频</a></li>
    <li <c:if test="${sidemenu eq 'atlas'}">class="active"</c:if> ><a href="${ctx}/news/atlas">&nbsp;&nbsp;● 搭配图集</a></li>
    <li <c:if test="${sidemenu eq 'news'}">class="active"</c:if> ><a href="${ctx}/news/news">&nbsp;&nbsp;● 新闻资讯</a></li>
</ul>