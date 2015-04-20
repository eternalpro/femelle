<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<layout:front menu="product">
    <jsp:attribute name="css">
        <style>
            .thumbnail {
                display: block;
                padding: 4px;
                line-height: 20px;
                border: 0px solid #ddd;
                -webkit-border-radius: 0px;
                -moz-border-radius: 0px;

                border-radius: 0px;
                -webkit-box-shadow: 0 0px 0px rgba(0, 0, 0, 0.055);
                -moz-box-shadow: 0 0px 0px rgba(0, 0, 0, 0.055);

                box-shadow: 0 0px 0px rgba(0, 0, 0, 0.055);
                -webkit-transition: all 0.2s ease-in-out;
                -moz-transition: all 0.2s ease-in-out;
                -o-transition: all 0.2s ease-in-out;
                transition: all 0.2s ease-in-out;
            }
        </style>
    </jsp:attribute>
    <jsp:attribute name="main">
        <div class="bg">
            <div class="container" style="width: 1124px;">
                <div class="bg-left">
                    <h4>产品介绍</h4>
                    <c:set var="sidemenu" value="${type}" scope="request"/>
                    <jsp:include page="sidebar.jsp"/>
                </div>
                <div class="bg-right">
                    <ul class="thumbnails product-items">
                        <c:forEach items="${products}" var="product">
                            <li style="width: 380px; ">
                                <a href="${ctx}/product/item/${product.id}" class="thumbnail">
                                    <img src="${ctx}/upload/${product.imagepath}" />
                                </a>

                                <p style="padding-left: 5px;display:block;overflow:hidden;word-break:keep-all;white-space:nowrap;text-overflow:ellipsis; text-align: center">
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
            loadPage();
        </script>
    </jsp:attribute>
</layout:front>