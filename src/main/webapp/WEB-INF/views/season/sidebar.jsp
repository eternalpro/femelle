<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<ul class="bg-sidebar">
    <c:forEach items="${tuijians}" var="tuijian">
        <li <c:if test="${sidemenu eq tuijian.id}">class="active"</c:if> ><a href="${ctx}/season/${tuijian.id}">&nbsp;&nbsp;● ${tuijian.title}</a></li>
    </c:forEach>
</ul>
