<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<layout:admin menu="news">
    <jsp:attribute name="main">
        <div class="page-content-wrapper">
            <div class="page-content">
                <div class="page-head">
                    <div class="page-title">
                        <h1>资讯管理
                            <small>与时尚动态和新闻资讯有关的设置</small>
                        </h1>
                    </div>
                </div>
                <!-- content -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="tabbable tabbable-custom tabbable-noborder  tabbable-reversed">
                            <ul class="nav nav-tabs">
                                <li class="active">
                                    <a href="#tab_0" data-toggle="tab" aria-expanded="true">
                                        时尚动态 </a>
                                </li>
                                <li class="">
                                    <a href="#tab_1" data-toggle="tab" aria-expanded="false">
                                        新闻资讯 </a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" id="tab_0">
                                    <jsp:include page="tab_0.jsp"/>
                                </div>
                                <div class="tab-pane" id="tab_1">
                                    <jsp:include page="tab_1.jsp"/>
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

                new uploadPreview({ UpBtn: "fashionFile", ImgShow: "fashionImg" });
                new uploadPreview({ UpBtn: "newsFile", ImgShow: "newsImg" });

                $('.news-edit').on('click', function (e) {
                    e.preventDefault();
                    var $this = $(this);
                    $.get($this.attr('href'), function (data) {
                        $('.modal').html(data).modal('show');
                    })
                });



                $('.news-delete').on('click', function (e) {
                    e.preventDefault();
                    var $this = $(this);
                    if(confirm('确定要删除吗？')) {
                        location.href = $this.attr('href');
                    }
                });

            })();
        </script>
    </jsp:attribute>
</layout:admin>