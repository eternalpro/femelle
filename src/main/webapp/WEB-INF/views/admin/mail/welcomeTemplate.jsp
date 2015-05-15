<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<layout:admin menu="mail">
    <jsp:attribute name="main">
        <div class="page-content-wrapper">
            <div class="page-content">
                <div class="page-head">
                    <div class="page-title">
                        <h1>设置欢迎邮件模板
                            <small>自定义欢迎邮件信息，当用户注册成功后收到此邮件</small>
                        </h1>
                    </div>
                </div>
                <!-- content -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="tab-pane" id="tab_1_2">
                            <div class="portlet light">
                                <div class="portlet-title">
                                    <div class="actions">
                                        <a class="btn btn-circle btn-icon-only btn-default fullscreen"
                                           href="javascript:;" data-original-title="" title="">
                                        </a>
                                    </div>
                                </div>
                                <div class="portlet-body">
                                    <form class="form-horizontal" role="form" method="post" action="${ctx}/admin/mail/saveWelcomeTemplate">
                                        <div class="form-body">
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">邮件标题</label>
                                                <div class="col-md-9">
                                                    <input type="text" name="mailSubject" class="form-control input-inline input-large" placeholder="" value="${subject.value}">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">邮件内容</label>
                                                <div class="col-md-9">
                                                    <textarea class="form-control editor" name="mailContent" style="height: 400px; display: none;">${content.value}</textarea>
                                                    <span class="help-inline"></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-actions">
                                            <div class="row">
                                                <div class="col-md-offset-3 col-md-9">
                                                    <button type="submit" class="btn green">保存</button>
                                                    <button type="reset" class="btn default">重置</button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
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