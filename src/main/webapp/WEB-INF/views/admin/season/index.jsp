<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<layout:admin menu="product">
    <jsp:attribute name="main">
        <div class="page-content-wrapper">
            <div class="page-content">
                <div class="page-head">
                    <div class="page-title">
                        <h1>当季推荐
                            <small>对所有产品进行推荐</small>
                        </h1>
                    </div>
                </div>
                <!-- content -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="tabbable tabbable-custom tabbable-noborder  tabbable-reversed">
                            <ul class="nav nav-tabs">
                                <li class="active">
                                    <a href="${ctx}/admin/season"> 当季推荐 </a>
                                </li>
                                <li>
                                    <a href="${ctx}/admin/product"> 所有产品 </a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active">
                                    <div class="portlet light ">
                                        <div class="portlet-title">
                                            <div class="caption">
                                                <i class="fa fa-gift font-green-sharp"></i>
                                                <span class="caption-subject font-green-sharp bold uppercase">推荐列表</span>
                                            </div>
                                            <div class="actions">
                                                <a href="${ctx}/admin/season/edit/0"
                                                   class="btn btn-circle btn-sm tuijian-edit" id="addSeason">
                                                    <i class="fa fa-plus"></i> 添加 </a>
                                                <a class="btn btn-circle btn-icon-only btn-default fullscreen"
                                                   href="javascript:;" data-original-title="" title="">
                                                </a>
                                            </div>

                                        </div>
                                        <div class="portlet-body">
                                            <div class="table-container">
                                                <div class="table-scrollable">
                                                    <table class="table table-striped table-hover dataTable no-footer">
                                                        <thead>
                                                        <tr>
                                                            <th width="50"></th>
                                                            <th width="180">名称</th>
                                                            <th width="180">描述</th>
                                                            <th width="50">首页显示</th>
                                                            <th width="90">操作</th>
                                                        </tr>
                                                        </thead>
                                                        <tbody>
                                                        <c:forEach items="${tuijians}" var="tuijian">
                                                            <tr>
                                                                <td>
                                                                    <a href="${ctx}/upload/${tuijian.imagepath}" class="fancybox">
                                                                        <img src="${ctx}/upload/${tuijian.imagepath}" alt="" style="height: 60px;;"/>
                                                                    </a>
                                                                </td>
                                                                <td>
                                                                        ${tuijian.title}
                                                                    <div>
                                                                        <a href="${ctx}/admin/season/addProduct/${tuijian.id}"
                                                                           class="text-danger tuijian-edit">
                                                                            <small>添加推荐</small>
                                                                        </a> |
                                                                        <a href="${ctx}/admin/season/viewProduct/${tuijian.id}"
                                                                           class="text-primary tuijian-edit">
                                                                            <small>查看推荐</small>
                                                                        </a>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    ${tuijian.memo}
                                                                </td>
                                                                <td>
                                                                    <c:choose>
                                                                        <c:when test="${tuijian.ismain eq 'y'}">
                                                                            <a href="${ctx}/admin/season/set/n-${tuijian.id}"
                                                                               class="btn btn-icon-only btn-circle green">
                                                                                <i class="fa fa-circle"></i>
                                                                            </a>
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                            <a href="${ctx}/admin/season/set/y-${tuijian.id}"
                                                                               class="btn btn-icon-only btn-circle red">
                                                                                <i class="fa fa-circle-o"></i>
                                                                            </a>
                                                                        </c:otherwise>
                                                                    </c:choose>
                                                                </td>
                                                                <td>
                                                                    <a href="${ctx}/admin/season/edit/${tuijian.id}"
                                                                       class="btn btn-icon-only btn-circle blue tuijian-edit">
                                                                        <i class="fa fa-edit"></i>
                                                                    </a>
                                                                    <a href="${ctx}/admin/season/delete/${tuijian.id}"
                                                                       class="btn btn-icon-only btn-circle red tuijian-delete">
                                                                        <i class="fa fa-remove"></i>
                                                                    </a>
                                                                </td>
                                                            </tr>
                                                        </c:forEach>
                                                        </tbody>
                                                    </table>

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
    <jsp:attribute name="js">
        <script>
            (function () {
                $('.tuijian-edit').on('click', function (e) {
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