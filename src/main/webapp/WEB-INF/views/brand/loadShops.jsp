<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<c:forEach items="${shops}" var="shop" varStatus="i">
    <div>
        <h4 style="font-weight: normal; font-size: 14px;">${shop.title}</h4>
        <div style="font-size: 12px;">${shop.address}</div>
        <div style="font-size: 12px;">${shop.tel}</div>
        <c:if test="${(i.index + 1) < fn:length(shops)}">
            <div class="border"></div>
        </c:if>
    </div>
</c:forEach>