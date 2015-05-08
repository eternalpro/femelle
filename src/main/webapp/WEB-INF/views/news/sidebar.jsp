<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<ul class="bg-sidebar">
    <li <c:if test="${sidemenu eq 'news'}">class="active"</c:if> ><a href="${ctx}/news/news">&nbsp;&nbsp;● 最新资讯</a></li>
    <li <c:if test="${sidemenu eq 'video'}">class="active"</c:if> ><a href="${ctx}/video">&nbsp;&nbsp;● 宣传视频</a></li>
    <li <c:if test="${sidemenu eq 'album'}">class="active"</c:if> ><a href="${ctx}/album">&nbsp;&nbsp;● 搭配图集</a></li>
    <li <c:if test="${sidemenu eq 'fashion'}">class="active"</c:if> ><a href="${ctx}/news/fashion">&nbsp;&nbsp;● 时尚动态</a></li>
</ul>