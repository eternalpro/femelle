<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<layout:admin menu="index">
    <jsp:attribute name="main">
        <div class="page-content-wrapper">
            <div class="page-content">
                <div class="page-head">
                    <div class="page-title">
                        <h1>站点设置
                            <small>与整站信息有关的设置</small>
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
                                        首页 </a>
                                </li>
                                <li class="">
                                    <a href="#tab_1" data-toggle="tab" aria-expanded="false">
                                        品牌介绍 </a>
                                </li>
                                <li class="">
                                    <a href="#tab_2" data-toggle="tab" aria-expanded="false">
                                        合作支持 </a>
                                </li>
                                <li class="">
                                    <a href="#tab_3" data-toggle="tab" aria-expanded="false">
                                        会员中心 </a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" id="tab_0">
                                    <jsp:include page="tab/tab_0.jsp"/>
                                </div>
                                <div class="tab-pane" id="tab_1">
                                    <jsp:include page="tab/tab_1.jsp"/>
                                </div>
                                <div class="tab-pane" id="tab_2">
                                    <jsp:include page="tab/tab_2.jsp"/>
                                </div>
                                <div class="tab-pane" id="tab_3">
                                    <jsp:include page="tab/tab_3.jsp"/>
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
                /**
                 * 保存品牌故事
                 */
                $('#brandForm').ajaxForm({
                    success: function (data) {
                        toastr.success("保存成功！");
                        $('#brandImage').attr("src", "${ctx}/upload/" + data)
                        $('#brandImage').closest('div').removeClass('hide');
                    },
                    error: function (data) {
                        toastr.error('系统错误，请联系管理员！');
                    }
                });

                /**
                 * 保存加入我们
                 */
                $('#joinusForm').ajaxForm({
                    success: function (data) {
                        toastr.success("保存成功！");
                        $('#joinusImage').attr("src", "${ctx}/upload/" + data)
                        $('#joinusImage').closest('div').removeClass('hide');
                    },
                    error: function (data) {
                        toastr.error('系统错误，请联系管理员！');
                    }
                });

                /**
                 * 保存加盟
                 */
                $('#affiliateForm').ajaxForm({
                    success: function (data) {
                        toastr.success("保存成功！");
                        $('#affiliateImage').attr("src", "${ctx}/upload/" + data)
                        $('#affiliateImage').closest('div').removeClass('hide');
                    },
                    error: function (data) {
                        toastr.error('系统错误，请联系管理员！');
                    }
                });
                /**
                 * 保存 门店位置
                 */
                $('#shopForm').ajaxForm({
                    success: function (data) {
                        toastr.success("保存成功！");
                        $('#shopImage').attr("src", "${ctx}/upload/" + data)
                        $('#shopImage').closest('div').removeClass('hide');
                    },
                    error: function (data) {
                        toastr.error('系统错误，请联系管理员！');
                    }
                });
                /**
                 * 保存 唯品会
                 */
                $('#vipForm').ajaxForm({
                    success: function (data) {
                        toastr.success("保存成功！");
                        $('#vipImage').attr("src", "${ctx}/upload/" + data)
                        $('#vipImage').closest('div').removeClass('hide');
                    },
                    error: function (data) {
                        toastr.error('系统错误，请联系管理员！');
                    }
                });

                /**
                 * 保存 天猫
                 */
                $('#tmallForm').ajaxForm({
                    success: function (data) {
                        toastr.success("保存成功！");
                        $('#tmallImage').attr("src", "${ctx}/upload/" + data)
                        $('#tmallImage').closest('div').removeClass('hide');
                    },
                    error: function (data) {
                        toastr.error('系统错误，请联系管理员！');
                    }
                });
                /**
                 * 保存 联系我们
                 */
                $('#callusForm').ajaxForm({
                    success: function (data) {
                        toastr.success("保存成功！");
                    },
                    error: function (data) {
                        toastr.error('系统错误，请联系管理员！');
                    }
                });

                /**
                 * 保存 联系我们
                 */
                $('#faqForm').ajaxForm({
                    success: function (data) {
                        toastr.success("保存成功！");
                    },
                    error: function (data) {
                        toastr.error('系统错误，请联系管理员！');
                    }
                });
            })();
        </script>
    </jsp:attribute>
</layout:admin>