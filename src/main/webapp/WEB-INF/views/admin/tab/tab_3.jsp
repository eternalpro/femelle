<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<div class="row">
    <div class="col-md-12">
        <div class="portlet light bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class="icon-equalizer font-blue-sharp"></i>
                    <span class="caption-subject font-blue-sharp bold uppercase">设置联系我们、常见问题信息</span>
                </div>
                <div class="actions">
                    <a class="btn btn-circle btn-icon-only btn-default fullscreen" href="javascript:;" data-original-title="" title="">
                    </a>
                </div>
            </div>
            <div class="portlet-body">
                <div class="tabbable tabbable-line">
                    <div class="row">
                        <div class="col-md-3">
                            <ul class="nav nav-pills nav-stacked">
                                <li class="active">
                                    <a href="#tab_3_1" data-toggle="tab" aria-expanded="true">
                                        联系我们 </a>
                                </li>
                                <li class="">
                                    <a href="#tab_3_2" data-toggle="tab" aria-expanded="false">
                                        常见问题 </a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-9">
                            <div class="tab-content">
                                <jsp:include page="tab_3_1.jsp"/>
                                <jsp:include page="tab_3_2.jsp"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>