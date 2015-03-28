<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<div class="modal-dialog ">
    <form action="${ctx}/admin/season/save" method="post" id="seasonForm">
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
                    <label for="title">名称</label>
                    <input type="text" name="tuijian.title" class="form-control" id="title" placeholder="填写名称" value="${tuijian.title}">
                </div>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="submit"  class="btn btn-primary">保存</button>
            </div>
        </div>
    </form>
</div>