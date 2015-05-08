<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<div class="modal-dialog ">
    <form action="${ctx}/admin/video/save" method="post" id="videoForm">
        <c:if test="${!empty(video)}">
            <input type="hidden" name="video.id" value="${video.id}"/>
        </c:if>
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">添加或编辑视频信息</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label>视频地址</label>
                    <input type="text" name="video.url" class="form-control" value="${video.url}">
                    <p class="help-block">请填写“flash地址”，点击 <a href="${ctx}/images/readme.jpg" class="fancybox"><strong class="text-danger">这里</strong></a> 查看帮助。</p>
                </div>
                <div class="form-group">
                    <label for="address">视频描述</label>
                    <input type="text" name="video.description" class="form-control" id="address" placeholder="填写详细地址信息" value="${video.description}">
                </div>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="submit"  class="btn btn-primary">保存</button>
            </div>
        </div>
    </form>
</div>
