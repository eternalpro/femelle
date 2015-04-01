<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<!-- 天猫 -->
<div class="tab-pane" id="tab_2_2">
    <form role="form" id="tmallForm" action="${ctx}/admin/site/saveTmall" method="post" enctype="multipart/form-data">
        <div class="form-body">
            <div class="form-group">
                <label>展示图片：</label>
                <input type="file" class="form-control" name="tmallFile" id="tmallFile">
            </div>

            <div class="form-group <c:if test='${empty(tmallInfo.filepath)}'> hide </c:if>">
                <label>预览：</label>
                <a class="fancybox" href="${ctx}/upload/${tmallInfo.filepath}">
                    <img id="tmallImage" class="form-control" src="${ctx}/upload/${tmallInfo.filepath}" alt=""
                         style="width: 80px; height: 60px;"/>
                </a>
            </div>

           <%-- <div class="form-group">
                <label>标题：</label>
                <input type="text" name="tmallInfo.title" class="form-control" value="${tmallInfo.title}"/>
            </div>
--%>
            <div class="form-group">
                <label>描述文字：</label>
                <textarea class="form-control editor" name="tmallInfo.content"
                          style="height:200px;">${tmallInfo.content}</textarea>
            </div>
        </div>
        <div class="form-actions">
            <button type="submit" class="btn blue">保存</button>
            <button type="button" class="btn default">取消</button>
        </div>
    </form>
</div>

