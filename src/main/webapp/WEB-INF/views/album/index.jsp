<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<layout:front menu="news">
    <jsp:attribute name="css">
        <style>
            .bg-sidebar {
                height: 905px;
            }

            .bg-right {
                height: 970px;
            }
        </style>
    </jsp:attribute>
    <jsp:attribute name="main">
        <div class="bg">
            <div class="container" style="width: 1124px;">
                <c:if test="${albumPage.totalPage>1}">
                    <div class="arrow-left" style="">
                        <a href="${ctx}/album/${albumPage.pageNumber eq 1 ? 1 : albumPage.pageNumber - 1}">
                            <img src="${ctx}/resources/img/arrow-left.png" alt=""/>
                        </a>
                    </div>

                    <div class="arrow-right" style="">
                        <a href="${ctx}/album/${albumPage.pageNumber eq albumPage.totalPage? albumPage.pageNumber: albumPage.pageNumber + 1}">
                            <img src="${ctx}/resources/img/arrow-right.png" alt=""/>
                        </a>
                    </div>
                </c:if>
                <div class="bg-left">
                    <h4>最新资讯</h4>
                    <c:set var="sidemenu" value="album" scope="request"/>
                    <jsp:include page="../news/sidebar.jsp"/>
                </div>
                <div class="bg-right">

                    <div id="gc">

                    </div>

                    <div class="margin20-l row margin50-t margin20-b">
                        <div class="span3 border-black">
                        </div>
                        <div class="span3 text-center" style="font-size: 20px;">其他图集</div>
                        <div class="span3 border-black">

                        </div>
                    </div>

                    <ul class="thumbnails margin20-t product-items">
                        <c:forEach items="${albumPage.list}" var="product">
                            <li style="width: 255px; ">
                                <a href="#" class="thumbnail image-a" data-id="${product.id}">
                                    <img src="${ctx}/upload/${product.imagepath}" "/>
                                </a>
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

                var loadGA = function (id) {
                    $.get('${ctx}/album/loadGalleria/' + id, function (data) {
                        $('#gc').html(data);
                    });
                };

                $('a.image-a').on('click', function (e) {
                    e.preventDefault();
                    var $this = $(this);
                    var id = $this.data('id');
                    loadGA(id);
                });

                loadGA('${current}');

            })();
        </script>
    </jsp:attribute>
</layout:front>