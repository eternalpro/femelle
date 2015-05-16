<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<layout:admin menu="mail">
    <jsp:attribute name="main">
        <div class="page-content-wrapper">
            <div class="page-content">
                <div class="page-head">
                    <div class="page-title">
                        <h1>推送订阅消息
                            <small>给所有已订阅的邮件推送最新资讯、消息</small>
                        </h1>
                    </div>
                </div>
                <!-- content -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="tab-pane" id="tab_1_2">
                            <div class="portlet light">
                                <div class="portlet-title">
                                    <h3 class="pull-left">已订阅邮箱列表：</h3>

                                    <div class="actions">

                                        <a href="${ctx}/admin/mail/writeMail" class="btn btn-circle btn-sm shop-edit blue" id="addShop">
                                        <i class="icon-envelope"></i> 推送邮件 </a>
                                        <a class="btn btn-circle btn-icon-only btn-default fullscreen"
                                           href="javascript:;" data-original-title="" title="">
                                        </a>
                                    </div>
                                </div>
                                <div class="portlet-body">
                                    <div class="row">
                                        <c:forEach items="${emails}" var="email" varStatus="i">
                                        <div class="col-md-3">
                                            ${i.index + 1}. ${email.email}&nbsp;
                                            <a href="${ctx}/admin/mail/deleteMail/${email.id}" class="text-danger delete-data">删除</a>
                                        </div>
                                        </c:forEach>
                                    </div>
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
                $('.shop-edit').on('click', function (e) {
                    e.preventDefault();
                    var $this = $(this);
                    $.get($this.attr('href'), function (data) {
                        $('.modal').html(data).modal('show');
                    })
                });

                $('.shop-delete').on('click', function () {
                    e.preventDefault();
                    var $this = $(this);
                    if (confirm('确定要删除吗？')) {
                        location.href = $this.attr('href');
                    }
                });

            })();
        </script>
    </jsp:attribute>
</layout:admin>