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

                <div class="arrow-left" style="">
                    <a href="${ctx}/product/itemPrev/${product.id}">
                        <img src="${ctx}/resources/img/arrow-left.png" alt=""/>
                    </a>
                </div>

                <div class="arrow-right" style="">
                    <a href="${ctx}/product/itemNext/${product.id}">
                        <img src="${ctx}/resources/img/arrow-right.png" alt=""/>
                    </a>
                </div>

                <div class="bg-left">
                    <h4>产品介绍</h4>
                    <c:set var="sidemenu" value="${product.type}" scope="request"/>
                    <jsp:include page="sidebar.jsp"/>
                </div>

                <div class="bg-right">
                    <div class="product">
                        <div class="product-image">
                            <c:forEach items="${images}" var="image">
                                <div class="image-div">
                                    <a title="${product.title}" href="${ctx}/upload/${image.path}" class="fancybox"><img
                                            src="${ctx}/upload/${image.path}"/></a>
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
                                <div class="bdsharebuttonbox"><a href="#" class="bds_more" data-cmd="more"></a><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a></div>
                                <script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"1","bdSize":"16"},"share":{}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
                            </div>
                        </div>
                    </div>
                    <div class="tuijian">
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
            loadPage();

        </script>
    </jsp:attribute>
</layout:front>