<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<!-- 加盟 -->
<div class="tab-pane " id="tab_1_4">
    <form role="form" id="affiliateForm" action="${ctx}/admin/site/saveAffiliate" method="post"
          enctype="multipart/form-data">
        <div class="form-body">
            <div class="form-group">
                <label>展示图片：</label>
                <input type="file" class="form-control" name="affiliateFile" id="affiliateFile">
            </div>
            <div class="form-group <c:if test='${empty(affiliateInfo.filepath)}'> hide </c:if>">
                <label>预览：</label>
                    <img id="affiliateImage" class="form-control" src="${ctx}/upload/${affiliateInfo.filepath}" alt=""
                     style="width: 80px; height: 60px;"/>
            </div>
            <div class="form-group">
                <label>标题：</label>
                <input type="text" name="affiliateInfo.title" class="form-control" value="${affiliateInfo.title}"/>
            </div>

            <div class="form-group">
                <label>描述文字：</label>
                <textarea class="form-control editor" name="affiliateInfo.content"
                          style="height:200px;">${affiliateInfo.content}</textarea>
            </div>
        </div>
        <div class="form-actions">
            <button type="submit" class="btn blue">保存</button>
            <button type="button" class="btn default">取消</button>
        </div>
    </form>
</div>
