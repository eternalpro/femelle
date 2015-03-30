<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<layout:front>
    <jsp:attribute name="css">
        <style>

        </style>
    </jsp:attribute>
    <jsp:attribute name="main">
        <div class="bg">
            <div class="container" style="width: 1124px;">

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
                    <ul class="thumbnails margin20-t">
                        <c:forEach items="${products.list}" var="product">
                            <li style="width: 180px; height: 270px;">
                                <a href="#" class="thumbnail image-a" data-id="${product.id}">
                                    <img src="${ctx}/upload/${product.imagepath}" style="height: 250px;"/>
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
            var height = $('.bg-right').height();
            if(height < 500)
                height = 500;
            $('.bg-sidebar').css('height', height);
            $('.bg-right').css('height', height + 78);
            (function () {

                var loadGA = function(id) {
                    $.get('${ctx}/season/loadGalleria/' + id, function(data){
                        $('#gc').html(data);
                    });
                };

                $('a.image-a').on('click', function(e){
                    e.preventDefault();
                    var $this = $(this);
                    var id = $this.data('id');
                    loadGA(id);
                });
                loadGA('${products.list[0].id}');
            })();
        </script>
    </jsp:attribute>
</layout:front>