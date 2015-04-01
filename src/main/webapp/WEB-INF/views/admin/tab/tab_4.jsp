<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<div class="row">
    <div class="col-md-12">
        <div class="portlet light bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class="icon-equalizer font-blue-sharp"></i>
                    <span class="caption-subject font-blue-sharp bold uppercase">设置站点服务条款内容</span>
                </div>
                <div class="actions">
                    <a class="btn btn-circle btn-icon-only btn-default fullscreen" href="javascript:;"
                       data-original-title="" title="">
                    </a>
                </div>
            </div>
            <div class="portlet-body">
                <div class="tabbable tabbable-line">
                    <div class="row">
                        <div class="col-md-12">
                            <form role="form" id="provisionForm" action="${ctx}/admin/site/saveProvision" method="post">
                                <div class="form-body">
                                    <div class="form-group">
                                        <label>描述文字：</label>
                                        <textarea class="form-control editor" name="provisionInfo.content" style="height:200px;">${provisionInfo.content}</textarea>
                                    </div>
                                </div>
                                <div class="form-actions">
                                    <button type="submit" class="btn blue">保存</button>
                                    <button type="button" class="btn default">取消</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>