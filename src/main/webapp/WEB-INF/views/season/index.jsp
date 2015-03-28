<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<layout:front>
    <jsp:attribute name="main">
        <div class="bg">
            <div class="container" style="width: 1124px;">
                <div class="bg-left">
                    <h4>当季推荐</h4>
                    <c:set var="sidemenu" value="${tuijianId}" scope="request"/>
                    <jsp:include page="sidebar.jsp"/>
                </div>
                <div class="bg-right">
                    <ul class="thumbnails">
                        <c:forEach items="${products}" var="product">
                            <li style="width: 180px; height: 270px;">
                                <a href="${ctx}/product/item/${product.id}" class="thumbnail">
                                    <img src="${ctx}/upload/${product.imagepath}" style="height: 250px;"/>
                                </a>

                                <p style="padding-left: 5px;display:block;overflow:hidden;word-break:keep-all;white-space:nowrap;text-overflow:ellipsis;">
                                    <small>${product.title}</small>
                                </p>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
    </jsp:attribute>
    <jsp:attribute name="js">
        <script>
            (function () {

            })();
        </script>
    </jsp:attribute>
</layout:front>