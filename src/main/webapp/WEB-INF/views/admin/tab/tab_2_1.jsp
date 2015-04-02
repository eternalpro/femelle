<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<!-- 唯品会 -->
<div class="tab-pane active" id="tab_2_1">
    <form role="form" id="vipForm" action="${ctx}/admin/site/saveVIP" method="post" enctype="multipart/form-data">
        <div class="form-body">
            <div class="form-group">
                <label>展示图片：</label>
                <input type="file" class="form-control" name="vipFile" id="vipFile">
            </div>

            <div class="form-group">
                <label>预览：</label>
                <div>
                    <img id="vipImage" src="${ctx}/upload/${vipInfo.filepath}" alt=""
                         style="height: 60px;"/>
                </div>
            </div>

            <%--<div class="form-group">
                <label>标题：</label>
                <input type="text" name="vipInfo.title" class="form-control" value="${vipInfo.title}"/>
            </div>
--%>
            <div class="form-group">
                <label>描述文字：</label>
                <textarea class="form-control editor" name="vipInfo.content"
                          style="height:200px;">${vipInfo.content}</textarea>
            </div>
        </div>
        <div class="form-actions">
            <button type="submit" class="btn blue">保存</button>
            <button type="button" class="btn default">取消</button>
        </div>
    </form>
</div>

