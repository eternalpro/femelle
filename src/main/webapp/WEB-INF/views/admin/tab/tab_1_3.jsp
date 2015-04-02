<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<!-- 加入我们 -->
<div class="tab-pane " id="tab_1_3">
    <form role="form" id="joinusForm" action="${ctx}/admin/site/saveJoinus" method="post" enctype="multipart/form-data">
        <div class="form-body">
            <div class="form-group">
                <label>展示图片：</label>
                <input type="file" class="form-control" name="joinusFile" id="joinusFile">
            </div>
            <div class="form-group">
                <label>预览：</label>
                <div>
                    <img id="joinusImage" src="${ctx}/upload/${joinusInfo.filepath}" alt=""
                         style="height: 60px;"/>
                </div>
            </div>
            <div class="form-group">
                <label>标题：</label>
                <input type="text" name="joinusInfo.title" class="form-control" value="${joinusInfo.title}"/>
            </div>

            <div class="form-group">
                <label>描述文字：</label>
                <textarea class="form-control editor" name="joinusInfo.content"
                          style="height:200px;">${joinusInfo.content}</textarea>
            </div>
        </div>
        <div class="form-actions">
            <button type="submit" class="btn blue">保存</button>
            <button type="button" class="btn default">取消</button>
        </div>
    </form>
</div>
