<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<div class="modal-dialog modal-lg">
    <form action="${ctx}/admin/mail/pushMail" method="post" id="shopForm">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">编辑邮件信息</h4>
            </div>
            <div class="modal-body">

                <div class="form-group">
                    <label for="subject">主题</label>
                    <input type="text" name="mailSubject" class="form-control" id="subject"/>
                </div>

                <div class="form-group">
                    <label for="content">内容</label>
                    <textarea class="form-control editor" id="content" name="mailText"
                              style="height:300px;">
                        <p>这里填写邮件正文</p>
                        <p>--------</p>
                        <p>
                            如果您不希望以后再收到来自 法米拉服装服饰 的通知，请单击 <a href="http://www.alpha-femelle.com/unsubscribe">此处</a> 取消订阅。
                        </p>
                    </textarea>
                    <span class="help-block">
                        <span class="text-danger">*</span>
                        取消订阅链接: http://www.alpha-femelle.com/unsubscribe
                        。如不将订阅连接添加到邮件正文中，可能引起用户的不满。
                    </span>
                </div>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="submit" class="btn btn-primary">发送</button>
            </div>
        </div>
    </form>
</div>
<script>
    KindEditor.ready(function (K) {
        window.editor = K.create('#content', {
            items: ['formatblock', 'fontname', 'fontsize',
                '|', 'forecolor', 'hilitecolor', 'bold', 'italic',
                'underline', 'strikethrough', '|', 'justifyleft',
                'justifycenter', 'justifyright', '|',
                'insertorderedlist', 'insertunorderedlist',
                'indent', 'outdent'],
            langType: 'zh_CN',
            width: '100%',
            afterBlur: function () {  //利用该方法处理当富文本编辑框失焦之后，立即同步数据
                KindEditor.sync(".editor");
            }
        });
    });

</script>