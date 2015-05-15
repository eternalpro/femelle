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
                              style="height:300px;"></textarea>
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