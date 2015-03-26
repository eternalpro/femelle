<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<layout:front>
    <jsp:attribute name="main">
        <div class="bg">
            <div class="container" style="width: 1124px;">
                <div class="bg-left">
                    <h4>门店位置</h4>
                    <c:set var="sidemenu" value="shop" scope="request"/>
                    <jsp:include page="sidebar.jsp"/>
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
                    $.get('${ctx}/brand/loadShops/' + encodeURI(province), function(data){
                        $('#shopContent').html(data)
                        $('ul.bg-sidebar').height($('.bg-right').height() - 75);
                        $('ul.nav-shop').css('minHeight', $('#shopContent').height());
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