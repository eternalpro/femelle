<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<div class="modal-dialog ">
    <form action="${ctx}/admin/video/save" method="post" id="videoForm" enctype="multipart/form-data">
        <c:if test="${!empty(video)}">
            <input type="hidden" name="video.id" value="${video.id}"/>
        </c:if>
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">添加或编辑视频信息</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label>封面图片：</label><small class="text-danger">建议尺寸：150*120</small>
                    <input type="file" class="form-control" name="imageFile" id="aFile">
                </div>
                <div class="form-group">

                    <label>视频地址</label>
                    <input type="text" name="video.url" class="form-control" value="${video.url}">
                    <p class="help-block">请填写“flash地址”，点击 <a href="${ctx}/images/readme.jpg" class="fancybox"><strong class="text-danger">这里</strong></a> 查看帮助。</p>
                </div>
                <div class="form-group">
                    <label for="address">视频描述</label>
                    <textarea class="form-control editor" id="address" name="video.description"
                              style="height:200px;">${video.description}</textarea>
                </div>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="submit"  class="btn btn-primary">保存</button>
            </div>
        </div>
    </form>
</div>
<script>
    KindEditor.ready(function(K) {
        window.editor = K.create('.editor', {
            items : [ 'formatblock', 'fontname', 'fontsize',
                '|', 'forecolor', 'hilitecolor', 'bold', 'italic',
                'underline', 'strikethrough', '|', 'justifyleft',
                'justifycenter', 'justifyright', '|',
                'insertorderedlist', 'insertunorderedlist',
                'indent', 'outdent'],
            langType : 'zh_CN',
            width : '100%',
            afterBlur: function(){  //利用该方法处理当富文本编辑框失焦之后，立即同步数据
                KindEditor.sync(".editor") ;
            }
        });
    });
</script>