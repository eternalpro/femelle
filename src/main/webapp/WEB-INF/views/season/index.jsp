<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<layout:front menu="season">
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
                <c:if test="${products.totalPage > 1}">
                    <div class="arrow-left" style="">
                        <a href="${ctx}/season/${tuijianId}-${products.pageNumber eq 1 ? 1 : products.pageNumber - 1}">
                            <img src="${ctx}/resources/img/arrow-left.png" alt=""/>
                        </a>
                    </div>

                    <div class="arrow-right" style="">
                        <a href="${ctx}/season/${tuijianId}-${products.pageNumber eq products.totalPage? products.pageNumber: products.pageNumber + 1}">
                            <img src="${ctx}/resources/img/arrow-right.png" alt=""/>
                        </a>
                    </div>
                </c:if>
                <div class="bg-left">
                    <h4>当季推荐</h4>
                    <c:set var="sidemenu" value="${tuijianId}" scope="request"/>
                    <jsp:include page="sidebar.jsp"/>
                </div>
                <div class="bg-right">

                    <div id="gc">

                    </div>
                    <div class="margin20-l row margin50-t margin20-b">
                        <div class="span3 border-black">
                        </div>
                        <div class="span3 text-center" style="font-size: 20px;">其他推荐</div>
                        <div class="span3 border-black">

                        </div>
                    </div>
                    <ul class="thumbnails margin20-t product-items">
                        <c:forEach items="${products.list}" var="product">
                            <li style="width: 380px; ">
                                <a href="${ctx}/product/item/${product.id}" class="thumbnail image-a" data-id="${product.id}">
                                    <img src="${ctx}/upload/${product.imagepath}" />
                                </a>

                                <p class="text-center">
                                    <a href="${ctx}/product/item/${product.id}">
                                        ${product.title}
                                    </a>
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
                loadPage(500);

                var loadGA = function (id) {
                    $.get('${ctx}/season/loadGalleriaForTuijian/' + id, function (data) {
                        $('#gc').html(data);
                    });
                };

               /* $('a.image-a').on('click', function (e) {
                    e.preventDefault();
                    var $this = $(this);
                    var id = $this.data('id');
                    loadGA(id);
                });*/
                loadGA('${tuijianId}');
            })();
        </script>
    </jsp:attribute>
</layout:front>