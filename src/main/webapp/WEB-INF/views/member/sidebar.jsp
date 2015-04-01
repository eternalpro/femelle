<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<ul class="bg-sidebar">
    <li <c:if test="${sidemenu eq 'callus'}">class="active"</c:if> ><a href="${ctx}/member/callus">&nbsp;&nbsp;● 联系我们</a></li>
    <li <c:if test="${sidemenu eq 'faq'}">class="active"</c:if> ><a href="${ctx}/member/faq">&nbsp;&nbsp;● 常见问题</a></li>
</ul>