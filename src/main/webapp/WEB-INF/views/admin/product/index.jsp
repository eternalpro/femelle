<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<layout:admin menu="product">
    <jsp:attribute name="main">
        <div class="page-content-wrapper">
            <div class="page-content">
                <div class="page-head">
                    <div class="page-title">
                        <h1>产品管理
                            <small>与产品有关的设置</small>
                        </h1>
                    </div>
                </div>
                <!-- content -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="tabbable tabbable-custom tabbable-noborder  tabbable-reversed">
                            <ul class="nav nav-tabs">
                                <li>
                                    <a href="${ctx}/admin/season"> 当季推荐 </a>
                                </li>
                                <li class="active">
                                    <a href="${ctx}/admin/product"> 所有产品 </a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" id="tab_1">
                                    <div class="portlet light ">
                                        <div class="portlet-title">
                                            <div class="caption">
                                                <i class="fa fa-gift font-green-sharp"></i>
                                                <span class="caption-subject font-green-sharp bold uppercase">产品列表</span>
                                            </div>

                                            <div class="actions">

                                                <a href="${ctx}/admin/product/edit/0"
                                                   class="btn btn-circle btn-sm product-edit" id="addProduct">
                                                    <i class="fa fa-plus"></i> 添加 </a>

                                                <div class="btn-group">
                                                    <button data-close-others="true" data-delay="1000"
                                                            data-hover="dropdown" data-toggle="dropdown"
                                                            class="btn btn-success btn-circle dropdown-toggle"
                                                            type="button">
                                                        衣服分类 <i class="fa fa-angle-down"></i>
                                                    </button>
                                                    <ul role="menu" class="dropdown-menu">
                                                        <li>
                                                            <a href="${ctx}/admin/product">全部</a>
                                                        </li>
                                                        <c:forEach items="${types}" var="type">
                                                            <li>
                                                                <a href="${ctx}/admin/product/type/${type}">${type}</a>
                                                            </li>
                                                        </c:forEach>
                                                    </ul>
                                                </div>
                                                <a class="btn btn-circle btn-icon-only btn-default fullscreen"
                                                   href="javascript:;" data-original-title="" title="">
                                                </a>
                                            </div>

                                        </div>
                                        <div class="portlet-body" style="min-height: 300px;">
                                            <div class="table-container">
                                                <div class="table-scrollable">
                                                    <table class="table table-striped table-hover dataTable no-footer">
                                                        <thead>
                                                        <tr>
                                                            <th width="40"></th>
                                                            <th width="160">名称</th>
                                                            <th width="80">分类</th>
                                                            <th width="380">描述</th>
                                                            <th width="90">操作</th>
                                                        </tr>
                                                        </thead>
                                                        <tbody>
                                                        <c:forEach items="${products.list}" var="product">
                                                            <tr>
                                                                <td>
                                                                    <c:if test="${!empty(product.imagepath)}">
                                                                        <a href="${ctx}/upload/${product.imagepath}"
                                                                           class="fancybox">
                                                                            <img src="${ctx}/upload/${product.imagepath}"
                                                                                 alt=""
                                                                                 style="width: 60px; height: 40px;"/>
                                                                        </a>
                                                                    </c:if>
                                                                </td>
                                                                <td>
                                                                        ${product.title}

                                                                </td>
                                                                <td>
                                                                    <span class="badge badge-success">${product.type}</span>
                                                                </td>
                                                                <td>${product.description}</td>
                                                                <td>
                                                                    <a href="${ctx}/admin/product/edit/${product.id}"
                                                                       class="btn btn-icon-only btn-circle blue product-edit">
                                                                        <i class="fa fa-edit"></i>
                                                                    </a>
                                                                    <a href="${ctx}/admin/product/delete/${product.id}"
                                                                       class="btn btn-icon-only btn-circle red product-delete delete-data">
                                                                        <i class="fa fa-remove"></i>
                                                                    </a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="5">
                                                                    <div>
                                                                        <a href="${ctx}/admin/product/detail/add/${product.id}"
                                                                           class="text-danger product-edit">添加图片</a> |
                                                                        <a href="${ctx}/admin/product/detail/view/${product.id}"
                                                                           class="text-primary product-edit">查看图片</a> |
                                                                        <a href="${ctx}/admin/product/recommend/${product.id}"
                                                                           class="text-danger product-edit">
                                                                            查看搭配
                                                                        </a>
                                                                        |
                                                                        <a href="${ctx}/admin/product/recommend/add/${product.id}"
                                                                           class="text-primary product-edit">
                                                                            添加搭配
                                                                        </a>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        </c:forEach>
                                                        </tbody>
                                                    </table>

                                                </div>
                                                <nav>
                                                    <ul class="pagination">
                                                        <c:forEach var="i" begin="1" end="${products.totalPage}">
                                                            <li
                                                                    <c:if test="${i eq products.pageNumber}">class="disabled"</c:if>>
                                                                <a href="?page=${i}">${i}</a></li>
                                                        </c:forEach>
                                                    </ul>
                                                </nav>
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
                $('.product-edit').on('click', function (e) {
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