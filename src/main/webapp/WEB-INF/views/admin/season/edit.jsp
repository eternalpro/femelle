<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<div class="modal-dialog ">
    <form action="${ctx}/admin/season/save" method="post" id="seasonForm" enctype="multipart/form-data">
        <c:if test="${!empty(tuijian)}">
            <input type="hidden" name="tuijian.id" value="${tuijian.id}"/>
        </c:if>
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">添加或编辑推荐信息</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label>展示图片：</label>
                    <small class="text-danger">
                        首页中部四张图，推荐尺寸950*1550
                    </small>
                    <input type="file" class="form-control" name="tuijianFile">
                </div>
                <div class="form-group">
                    <label for="title">名称</label>
                    <input type="text" name="tuijian.title" class="form-control" id="title" placeholder="填写名称" value="${tuijian.title}">
                </div>
                <div class="form-group">
                    <label for="title">说明 <small class="text-danger">请简要描述，26个汉字</small></label>
                    <textarea name="tuijian.memo" class="form-control" id="memo">${tuijian.memo}</textarea>
                </div>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="submit"  class="btn btn-primary">保存</button>
            </div>
        </div>
    </form>
</div>