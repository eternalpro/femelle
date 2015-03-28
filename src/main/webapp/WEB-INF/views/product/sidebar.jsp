<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<ul class="bg-sidebar">
    <c:forEach items="${types}" var="type">
        <li <c:if test="${sidemenu eq type}">class="active"</c:if> ><a href="${ctx}/product/${type}">&nbsp;&nbsp;● ${type}</a></li>
    </c:forEach>
</ul>
