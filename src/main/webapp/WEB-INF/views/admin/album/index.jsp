<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<layout:admin menu="album">
    <jsp:attribute name="main">
        <div class="page-content-wrapper">
            <div class="page-content">
                <div class="page-head">
                    <div class="page-title">
                        <h1>搭配图集管理
                            <small>管理站点所有的搭配图集</small>
                        </h1>
                    </div>
                    <div class="page-toolbar">
                        <a href="${ctx}/admin/album/edit/0" class="btn btn-icon-only btn-circle blue add-modal">
                            <i class="fa fa-plus"></i>
                        </a>
                    </div>
                </div>

                <div class="portlet light">
                    <div class="portlet-title">
                        <div class="caption">
                            <i class="fa fa-gift font-green-sharp"></i>
                            <span class="caption-subject font-green-sharp bold uppercase">设置首页信息</span>
                            <small class="text-danger">
                                这是首页下方第一张图,建议尺寸1920*1080
                            </small>
                        </div>
                    </div>
                    <div class="portlet-body">
                        <form class="form-inline" id="albumForm" method="post" action="${ctx}/admin/site/saveAlbum"
                              enctype="multipart/form-data">
                            <div class="form-group">
                                <label for="title">预览：</label>
                                <img src="${ctx}/upload/${albumInfo.filepath}" alt="" id="fashionImg"
                                     style="height: 40px;"/>
                            </div>

                            <div class="form-group">
                                <label for="title">标题：</label>
                                <input type="text" class="form-control" name="albumInfo.title" id="title"
                                       value="${albumInfo.title}"
                                       placeholder="请输入10个字以内">
                            </div>

                            <div class="form-group">
                                <label for="content">内容：</label>
                                <input type="text" class="form-control" name="albumInfo.content" id="content"
                                       value="${albumInfo.content}"
                                       placeholder="请输入39~57个字">
                            </div>

                            <div class="form-group">
                                <label for="albumFile">图片：</label>
                                <input type="file" name="albumFile" id="albumFile" class=" form-control"/>
                            </div>
                            <button type="submit" id="saveAlbum" class="btn btn-primary">保存</button>
                        </form>
                    </div>
                </div>

                <!-- content -->
                <div class="row">
                    <c:forEach items="${albums}" var="album">
                        <div class="col-sm-12 col-md-3">
                            <div class="portlet light">
                                <a href="${ctx}/admin/album/viewItem/${album.id}" class="add-modal">
                                    <img src="${ctx}/upload/${album.imagepath}"
                                         style="width: 100%; height: 100px; display: block;"/>
                                </a>

                                <div class="caption">
                                    <p>
                                        <strong>${album.title}</strong>

                                    <p>

                                    <div class="btn-group btn-group-sm btn-group-solid">

                                        <a href="${ctx}/admin/album/edit/${album.id}" class="add-modal btn blue">
                                            <i class="fa fa-edit"></i>
                                        </a>
                                        <a href="${ctx}/admin/album/addItem/${album.id}" class="btn blue add-modal">
                                            <i class="fa fa-plus"></i>
                                        </a>
                                        <a href="${ctx}/admin/album/delete/${album.id}" class="delete-data btn red">
                                            <i class="fa fa-remove"></i>
                                        </a>

                                        <c:choose>
                                            <c:when test="${album.ismain eq 'y'}">
                                                <a href="${ctx}/admin/album/set/n-${album.id}"
                                                   class="btn green" title="取消首页显示">
                                                    <i class="fa fa-circle"></i>
                                                </a>
                                            </c:when>
                                            <c:otherwise>
                                                <a href="${ctx}/admin/album/set/y-${album.id}"
                                                   class="btn red" title="设置为首页显示">
                                                    <i class="fa fa-circle-o"></i>
                                                </a>
                                            </c:otherwise>
                                        </c:choose>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>

                </div>
            </div>
        </div>
    </jsp:attribute>
    <jsp:attribute name="js">
        <script>
            (function () {

                new uploadPreview({UpBtn: "albumFile", ImgShow: "fashionImg"});

                $('.add-modal').on('click', function (e) {
                    e.preventDefault();
                    var $this = $(this);
                    $.get($this.attr('href'), function (data) {
                        $('.modal').html(data).modal('show');
                    })
                });

            })();
        </script>
    </jsp:attribute>
</layout:admin>