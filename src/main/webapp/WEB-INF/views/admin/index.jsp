<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<layout:admin>
    <jsp:attribute name="main">
        <div class="page-content-wrapper">
            <div class="page-content">
                <div class="page-head">
                    <div class="page-title">
                        <h1>站点设置
                            <small>与整站信息有关的设置</small>
                        </h1>
                    </div>
                </div>
                <!-- content -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="tabbable tabbable-custom tabbable-noborder  tabbable-reversed">
                            <ul class="nav nav-tabs">
                                <li class="active">
                                    <a href="#tab_0" data-toggle="tab" aria-expanded="true">
                                        首页设置 </a>
                                </li>
                                <li class="">
                                    <a href="#tab_1" data-toggle="tab" aria-expanded="false">
                                        2 Cols </a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" id="tab_0">
                                    <div class="row">
                                        <div class="col-md-8">
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
                                                                <input type="text" class="form-control" placeholder="描述首页四组图集，建议控制在10个字以内">
                                                            </div>

                                                            <div class="form-group">
                                                                <label>模块二描述：</label>
                                                                <input type="text" class="form-control" placeholder="描述首页三条资讯信息，建议控制在10个字以内">
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
                                        <div class="col-md-4">
                                            <div class="portlet light bordered">
                                                <div class="portlet-title">
                                                    <div class="caption">
                                                        <i class="icon-info font-green-jungle"></i>
                                                        <span class="caption-subject font-green-jungle bold uppercase">说明</span>
                                                    </div>
                                                </div>
                                                <div class="portlet-body">
                                                    
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </jsp:attribute>
</layout:admin>