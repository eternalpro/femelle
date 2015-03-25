<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<layout:front>
    <jsp:attribute name="main">
        <div class="bg">
            <div class="container" style="width: 1124px;">
                <div class="bg-left">
                    <h4>门店位置</h4>
                    <ul class="bg-sidebar">
                        <li><a href="${ctx}/brand">&nbsp;&nbsp;● 品牌故事</a></li>
                        <li class="active"><a href="${ctx}/shop">&nbsp;&nbsp;● 门店位置</a></li>
                        <li><a href="${ctx}/joinus">&nbsp;&nbsp;● 加入我们</a></li>
                        <li><a href="${ctx}/affiliate">&nbsp;&nbsp;● 加盟</a></li>
                    </ul>
                </div>
                <div class="bg-right">
                    <img class="image" src="${ctx}/upload/${shopInfo.filepath}" alt=""/>

                    <div class="info atitle">
                            ${shopInfo.title}
                    </div>
                    <div class="info acontent">
                            ${shopInfo.content}
                        <br/>
                        <br/>

                        <div class="tabbable tabs-left">
                            <ul class="nav nav-tabs nav-shop" style="background: white;width: 200px;">
                                <c:forEach items="${provinces}" var="p">
                                    <li <c:if test="${currentP eq p.province}">class="active"</c:if> >
                                        <a href="#" data-province="${p.province}" class="loadShop">${p.province} > </a>
                                    </li>
                                </c:forEach>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" id="shopContent">

                                </div>
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

                var loadShopInfo = function (province) {
                    $.get('${ctx}/loadShops/' + encodeURI(province), function(data){
                        $('#shopContent').html(data)
                        $('ul.bg-sidebar').height($('.bg-right').height() - 75);
                        $('ul.nav-shop').minHeight($('#shopContent').height());
                    });
                };
                loadShopInfo('${currentP}');

                $('a.loadShop').on('click', function(e){
                    var $this = $(this);
                    e.preventDefault();
                    loadShopInfo($(this).data('province'));
                    $this.closest('ul').find('li').removeClass('active');
                    $this.closest('li').addClass('active');
                });
            })();
        </script>
    </jsp:attribute>
</layout:front>