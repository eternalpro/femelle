<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<div class="modal-dialog ">

    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                    aria-hidden="true">&times;</span></button>
            <h4 class="modal-title">添加或编辑视频信息</h4>
        </div>
        <div class="modal-body">
            <embed src="${video.url}" allowFullScreen="true" quality="high"
                   width="100%"
                   height="450px"
                   align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"
                   wmode="opaque"></embed>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            <button type="submit" class="btn btn-primary">保存</button>
        </div>
    </div>
</div>
