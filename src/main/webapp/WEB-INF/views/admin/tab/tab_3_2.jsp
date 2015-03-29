<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<!-- 天猫 -->
<div class="tab-pane" id="tab_3_2">
    <form role="form" id="faqForm" action="${ctx}/admin/site/saveFaq" method="post">
        <div class="form-body">
            <div class="form-group">
                <label>描述文字：</label>
                <textarea class="form-control editor" name="faqInfo.content"
                          style="height:200px;">${faqInfo.content}</textarea>
            </div>
        </div>
        <div class="form-actions">
            <button type="submit" class="btn blue">保存</button>
            <button type="button" class="btn default">取消</button>
        </div>
    </form>
</div>

