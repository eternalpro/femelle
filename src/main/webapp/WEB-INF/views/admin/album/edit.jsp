<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<div class="modal-dialog">
    <form action="${ctx}/admin/album/save" method="post" id="albumForm" enctype="multipart/form-data">
        <c:if test="${!empty(album)}">
            <input type="hidden" name="album.id" value="${album.id}"/>
        </c:if>
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">添加或编辑图集信息</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label>封面图片：</label><small class="text-danger">首页轮播图，建议尺寸：1920*1080</small>
                    <input type="file" class="form-control" name="albumFile">
                </div>
                <div class="form-group">
                    <label for="title">标题</label>
                    <input type="text" name="album.title" class="form-control" id="title" placeholder="填写标题" value="${album.title}">
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

</script>