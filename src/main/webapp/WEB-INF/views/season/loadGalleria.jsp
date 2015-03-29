<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<div id="galleria" style="height: 500px;;">

    <c:forEach items="${imagePaths}" var="path">
        <a href="${ctx}/upload/${path}">
            <img src="${ctx}/upload/${path}" style="width: 300px;">
        </a>
    </c:forEach>

</div>


<script>
    Galleria.run('#galleria');
</script>