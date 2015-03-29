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
                <!-- content -->
                <div class="row">
                    <c:forEach items="${albums}" var="album">
                        <div class="col-sm-12 col-md-3">
                            <div class="portlet light">
                                <a href="${ctx}/admin/album/viewItem/${album.id}" class="add-modal">
                                    <img src="${ctx}/upload/${album.imagepath}"
                                         style="width: 100%; height: 150px; display: block;">
                                </a>

                                <div class="caption">
                                    <p>
                                        <strong>${album.title}</strong>

                                    <p>

                                    <div class="btn-group btn-group-sm btn-group-solid">

                                        <a href="${ctx}/admin/album/viewItem/${album.id}" class="btn green add-modal">
                                            <i class="icon-eye"></i>
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
                                    </p>
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