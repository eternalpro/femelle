<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<!-- 品牌故事 -->
<div class="tab-pane active" id="tab_1_1">
    <form role="form" id="brandForm" action="${ctx}/admin/site/saveBrand" method="post" enctype="multipart/form-data">
        <div class="form-body">
            <div class="form-group">
                <label>展示图片：</label>
                <input type="file" class="form-control" name="brandFile" id="brandFile">
            </div>

            <div class="form-group">
                <label>预览：</label>
                <div>
                    <img id="brandImage" src="${ctx}/upload/${brandInfo.filepath}" alt=""
                         style="height: 60px;"/>
                </div>
            </div>

            <div class="form-group">
                <label>标题：</label>
                <input type="text" name="brandInfo.title" class="form-control" value="${brandInfo.title}"/>
            </div>

            <div class="form-group">
                <label>描述文字：</label>
                <textarea class="form-control editor" name="brandInfo.content"
                          style="height:200px;">${brandInfo.content}</textarea>
            </div>
        </div>
        <div class="form-actions">
            <button type="submit" class="btn blue">保存</button>
            <button type="button" class="btn default">取消</button>
        </div>
    </form>
</div>

