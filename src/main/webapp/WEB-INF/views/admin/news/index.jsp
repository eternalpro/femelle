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

                /**
                 * 保存时尚表单
                 */
                $('#saveFashion').on('click', function (e) {
                    e.preventDefault();
                    $('#fashionForm').ajaxSubmit({
                        success: function (data) {
                            $('#fashionImg').attr('src', '${ctx}/upload/'+data);
                            $('#fashionImg').closest('div').removeClass('hide');
                            toastr.success('保存成功！');
                        }
                    });
                });

                /**
                 * 保存新闻表单
                 */
                $('#saveNews').on('click', function (e) {
                    e.preventDefault();
                    $('#newsForm').ajaxSubmit({
                        success: function (data) {
                            $('#newsImg').attr('src', '${ctx}/upload/'+data)
                            $('#newsImg').closest('div').removeClass('hide');
                            toastr.success('保存成功！');
                        }
                    });
                });

            })();
        </script>
    </jsp:attribute>
</layout:admin>