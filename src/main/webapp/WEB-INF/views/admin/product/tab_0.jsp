<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<div class="portlet light">
    <div class="portlet-title">
        <div class="caption">
            <i class="fa fa-gift font-green-sharp"></i>
            <span class="caption-subject font-green-sharp bold uppercase">门店列表</span>
        </div>

        <div class="actions">
            <a href="${ctx}/admin/shop/edit/0" class="btn btn-circle btn-sm shop-edit" id="addShop">
                <i class="fa fa-plus"></i> 添加 </a>

            <a class="btn btn-circle btn-icon-only btn-default fullscreen" href="javascript:;" data-original-title="" title="">
            </a>
        </div>

    </div>
    <div class="portlet-body">
        <div class="table-container">
            <div class="table-scrollable">
                <table class="table table-striped table-hover dataTable no-footer">
                    <thead>
                    <tr>
                        <th width="10">省市</th>
                        <th width="80">名称</th>
                        <th width="180">位置</th>
                        <th width="50">电话</th>
                        <th width="50">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${shops}" var="shop">
                        <tr>
                            <td>${shop.province}</td>
                            <td>${shop.title}</td>
                            <td>${shop.address}</td>
                            <td>${shop.tel}</td>
                            <td>
                                <a href="${ctx}/admin/shop/edit/${shop.id}" class="btn btn-icon-only btn-circle blue shop-edit">
                                    <i class="fa fa-edit"></i>
                                </a>
                                <a href="${ctx}/admin/shop/delete/${shop.id}" class="btn btn-icon-only btn-circle red shop-delete">
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
