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
                            <img src="${ctx}/upload/${product.imagepath}"/>
                        </div>
                        <div class="product-detail">
                            <div class="product-title">
                                ${product.title}
                            </div>
                            <div class="product-content">
                                ${product.description}
                            </div>
                            <div class="guanzhu">
                                <a href="#">
                                    <img src="${ctx}/resources/img/weibo.png" alt=""/>
                                    微博关注
                                </a>
                                <a href="#" class="margin30-l">
                                    <img src="${ctx}/resources/img/wechat.png" alt=""/>
                                    微信关注
                                </a>
                            </div>
                        </div>
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