<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<layout:front>
    <jsp:attribute name="main">
        <div class="bg">
            <div class="container" style="width: 1124px;">
                <div class="bg-left">
                    <h4>产品介绍</h4>
                    <c:set var="sidemenu" value="${product.type}" scope="request"/>
                    <jsp:include page="sidebar.jsp"/>
                </div>
                <div class="bg-right">
                    <div class="product">
                        <div class="product-image">
                            <div class="image-div">
                                <a title="${product.title}" href="${ctx}/upload/${product.imagepath}" class="fancybox"><img
                                        src="${ctx}/upload/${product.imagepath}"/></a>
                            </div>
                            <c:forEach items="${images}" var="image">
                                <div class="image-div">
                                    <a title="${product.title}" href="${ctx}/upload/${product.imagepath}" class="fancybox"><img
                                            src="${ctx}/upload/${product.imagepath}"/></a>
                                </div>
                            </c:forEach>
                        </div>
                        <div class="product-detail">
                            <div class="product-title">
                                    ${product.title}
                            </div>
                            <div class="product-content">
                                    ${product.description}
                            </div>
                            <div class="guanzhu">
                                <p>
                                    <a href="#">
                                        <img src="${ctx}/resources/img/weibo.png" alt=""/>
                                        &nbsp;微博关注
                                    </a>
                                </p>

                                <p>
                                    <a href="#">
                                        <img src="${ctx}/resources/img/wechat.png" alt=""/>
                                        &nbsp;微信关注
                                    </a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="tuijian" style="float: left">
                        <div class="info atitle border">
                            推荐搭配
                        </div>
                        <ul class="thumbnails margin20-t margin10-l">
                            <c:forEach items="${recommends}" var="product">
                                <li style="width: 170px; height: 270px;">
                                    <a href="${ctx}/product/item/${product.id}" class="thumbnail">
                                        <img src="${ctx}/upload/${product.imagepath}" style="height: 250px;"/>
                                    </a>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
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