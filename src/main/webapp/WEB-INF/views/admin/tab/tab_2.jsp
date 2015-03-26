<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<div class="row">
    <div class="col-md-12">
        <div class="portlet light bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class="icon-equalizer font-blue-sharp"></i>
                    <span class="caption-subject font-blue-sharp bold uppercase">设置时尚动态、宣传视频、搭配图集、新闻资讯</span>
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
                                    <a href="#tab_1_1" data-toggle="tab" aria-expanded="true">
                                        时尚动态 </a>
                                </li>
                                <li class="">
                                    <a href="#tab_1_2" data-toggle="tab" aria-expanded="false">
                                        宣传视频 </a>
                                </li>
                                <li class="">
                                    <a href="#tab_1_3" data-toggle="tab" aria-expanded="false">
                                        搭配图集 </a>
                                </li>
                                <li class="">
                                    <a href="#tab_1_4" data-toggle="tab" aria-expanded="false">
                                        加盟 </a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-9">
                            <div class="tab-content">
                                <!-- 品牌故事 -->
                                <jsp:include page="tab_1_1.jsp"/>
                                <!--门店位置-->
                                <jsp:include page="tab_1_2.jsp"/>
                                <!-- 加入我们 -->
                                <jsp:include page="tab_1_3.jsp"/>
                                <!-- 加盟 -->
                                <jsp:include page="tab_1_4.jsp"/>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>