<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<!-- 唯品会 -->
<div class="tab-pane active" id="tab_3_1">
    <form role="form" id="callusForm" action="${ctx}/admin/site/saveCallus" method="post">
        <div class="form-body">
            <div class="form-group">
                <label>描述文字：</label>
                <textarea class="form-control editor" name="callusInfo.content"
                          style="height:200px;">${callusInfo.content}</textarea>
            </div>
        </div>
        <div class="form-actions">
            <button type="submit" class="btn blue">保存</button>
            <button type="button" class="btn default">取消</button>
        </div>
    </form>
</div>

