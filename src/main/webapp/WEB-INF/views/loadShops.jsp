<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<c:forEach items="${shops}" var="shop" varStatus="i">
    <div>
        <h4>${shop.title}</h4>
        <p>${shop.address}</p>
        <p>${shop.tel}</p>
        <c:if test="${(i.index + 1) < fn:length(shops)}">
            <div class="border"></div>
        </c:if>
    </div>
</c:forEach>