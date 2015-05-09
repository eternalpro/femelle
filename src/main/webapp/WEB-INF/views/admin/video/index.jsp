<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<layout:admin menu="video">
    <jsp:attribute name="main">
        <div class="page-content-wrapper">
            <div class="page-content">
                <div class="page-head">
                    <div class="page-title">
                        <h1>宣传视频
                            <small>管理首页宣传视频信息</small>
                        </h1>
                    </div>

                </div>
                <!-- content -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="tab-pane" id="tab_1_2">
                            <div class="portlet light">
                                <div class="portlet-title">
                                    <div class="caption">
                                        <i class="fa fa-gift font-green-sharp"></i>
                                        <span class="caption-subject font-green-sharp bold uppercase">视频列表</span>
                                    </div>

                                    <div class="actions">
                                        <a href="${ctx}/admin/video/edit/0" class="btn btn-circle btn-sm video-edit" id="addVideo">
                                            <i class="fa fa-plus"></i> 添加 </a>

                                        <a class="btn btn-circle btn-icon-only btn-default fullscreen" href="javascript:;" data-original-title="" title="">
                                        </a>
                                    </div>

                                </div>
                                <div class="portlet-body">
                                    <div class="row">
                                        <c:forEach items="${videos}" var="video">
                                            <div class="col-sm-6 col-md-4">
                                                <div class="thumbnail">
                                                    <a href="${ctx}/admin/video/show/${video.id}" class="video-edit">
                                                        <img src="${ctx}/upload/${video.imagepath}" alt=""/>
                                                    </a>
                                                    <div class="caption">
                                                        <p>${video.description}</p>
                                                            <a href="${ctx}/admin/video/edit/${video.id}" class="add-modal btn-sm btn blue video-edit">
                                                                <i class="fa fa-edit"></i> 编辑
                                                            </a>

                                                            <a href="${ctx}/admin/video/delete/${video.id}" class="btn red btn-sm video-delete">
                                                                <i class="fa fa-remove"></i> 删除
                                                            </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </jsp:attribute>
    <jsp:attribute name="js">
        <script>
            (function(){
                $('.video-edit').on('click', function(e){
                    e.preventDefault();
                    var $this = $(this);
                    $.get($this.attr('href'), function(data){
                        $('.modal').html(data).modal('show');
                    })
                });

                $('.video-delete').on('click', function(e){
                    e.preventDefault();
                    var $this = $(this);
                    if(confirm('确定要删除吗？')){
                        location.href = $this.attr('href');
                    }
                });

            })();
        </script>
    </jsp:attribute>
</layout:admin>