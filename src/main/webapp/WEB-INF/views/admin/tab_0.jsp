<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<div class="row">
    <div class="col-md-9">
        <div class="portlet light bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class="icon-equalizer font-blue-sharp"></i>
                    <span class="caption-subject font-blue-sharp bold uppercase">设置首页相关信息</span>
                </div>
            </div>
            <div class="portlet-body form">
                <!-- BEGIN FORM-->
                <form role="form">
                    <div class="form-body">
                        <div class="form-group">
                            <label>模块一描述：</label>
                            <input type="text" class="form-control" placeholder="建议控制在10个字以内">
                        </div>

                        <div class="form-group">
                            <label>模块二描述：</label>
                            <input type="text" class="form-control" placeholder="建议控制在10个字以内">
                        </div>
                    </div>
                    <div class="form-actions">
                        <button type="submit" class="btn blue">保存</button>
                        <button type="button" class="btn default">取消</button>
                    </div>
                </form>
                <!-- END FORM-->
            </div>
        </div>
    </div>
    <div class="col-md-3">
        <div class="portlet light bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class="icon-info font-green-jungle"></i>
                    <span class="caption-subject font-green-jungle bold uppercase">说明</span>
                </div>
            </div>
            <div class="portlet-body">
                <dl>
                    <dt>模块一</dt>
                    <dd>指首页四组图集部分</dd>
                    <dt>模块二</dt>
                    <dd>指首页三组资讯部分</dd>
                </dl>
            </div>
        </div>
    </div>
</div>

