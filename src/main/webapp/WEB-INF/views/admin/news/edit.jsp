<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<div class="modal-dialog">
    <form action="${ctx}/admin/news/save" method="post" id="shopForm" enctype="multipart/form-data">
        <c:if test="${!empty(news)}">
            <input type="hidden" name="news.id" value="${news.id}"/>
        </c:if>
        <input type="hidden" value="${newsType}" name="newsType"/>
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">添加或编辑咨询信息</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label>展示图片：</label>
                    <input type="file" class="form-control" name="newsFile" id="newsFile1">
                </div>

                <div class="form-group">
                    <label>预览：</label>
                    <div>
                        <img src="${ctx}/upload/${news.imagepath}" id="newsImg1" alt="" style="height: 60px;"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="title">标题</label>
                    <input type="text" name="news.title" class="form-control" id="title" placeholder="填写标题" value="${news.title}">
                </div>
                <div class="form-group">
                    <label for="content">内容</label>
                    <textarea class="form-control editor" id="content" name="news.content"
                              style="height:200px;">${news.content}</textarea>
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
    new uploadPreview({ UpBtn: "newsFile1", ImgShow: "newsImg1" });
    KindEditor.ready(function(K) {
        window.editor = K.create('#content', {
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