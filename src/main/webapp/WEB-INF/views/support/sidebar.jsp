<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<ul class="bg-sidebar">
    <li <c:if test="${sidemenu eq 'vip'}">class="active"</c:if> ><a href="${ctx}/support/vip">&nbsp;&nbsp;● 唯品会</a></li>
    <li <c:if test="${sidemenu eq 'tmall'}">class="active"</c:if> ><a href="${ctx}/support/tmall">&nbsp;&nbsp;● 天&nbsp;&nbsp;猫</a></li>
</ul>