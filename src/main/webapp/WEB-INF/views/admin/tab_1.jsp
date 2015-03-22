<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<div class="row">
    <div class="col-md-9">
        <div class="portlet light bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class="icon-equalizer font-blue-sharp"></i>
                    <span class="caption-subject font-blue-sharp bold uppercase">设置品牌介绍页面相关信息</span>
                </div>
            </div>
            <div class="portlet-body">
                <div class="tabbable tabbable-line">
                    <div class="row">
                        <div class="col-md-3">
                            <ul class="nav nav-pills nav-stacked">
                                <li class="active">
                                    <a href="#tab_1_1" data-toggle="tab" aria-expanded="true">
                                        品牌故事 </a>
                                </li>
                                <li class="">
                                    <a href="#tab_1_2" data-toggle="tab" aria-expanded="false">
                                        门店位置 </a>
                                </li>
                                <li class="">
                                    <a href="#tab_1_3" data-toggle="tab" aria-expanded="false">
                                        加入我们 </a>
                                </li>
                                <li class="">
                                    <a href="#tab_1_4" data-toggle="tab" aria-expanded="false">
                                        加盟 </a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-9">
                            <div class="tab-content">
                                <div class="tab-pane active" id="tab_1_1">
                                    <form role="form">
                                        <div class="form-body">
                                            <div class="form-group">
                                                <label>描述图片：</label>
                                                <input type="file" class="form-control" >
                                            </div>

                                            <div class="form-group">
                                                <label>描述文字：</label>
                                                <textarea id="editor_id" class="form-control" name="content" style="height:200px;"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-actions">
                                            <button type="submit" class="btn blue">保存</button>
                                            <button type="button" class="btn default">取消</button>
                                        </div>
                                    </form>
                                </div>
                                <div class="tab-pane" id="tab_1_2">

                                </div>
                                <div class="tab-pane " id="tab_1_3">

                                </div>
                                <div class="tab-pane " id="tab_1_4">

                                </div>
                            </div>

                        </div>
                    </div>
                </div>
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

