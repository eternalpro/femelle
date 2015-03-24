<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<!--门店位置-->
<div class="tab-pane" id="tab_1_2">
    <div class="portlet light">
        <div class="portlet-title">
            <div class="caption">
                <i class="fa fa-gift font-green-sharp"></i>
                <span class="caption-subject font-green-sharp bold uppercase">门店列表</span>
                <span class="caption-helper">管理所有门店信息...</span>
            </div>
            <div class="actions">
                <a href="javascript:;" class="btn btn-circle  btn-sm">
                    <i class="fa fa-plus"></i> 添加 </a>

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
                            <th width="80">位置</th>
                            <th width="50">电话</th>
                            <th width="50">操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>北京市</td>
                            <td>北京市王府井店</td>
                            <td>北京市王府井专卖店3号</td>
                            <td>18701303231</td>
                            <td>
                                <a href="javascript:;" class="btn btn-icon-only btn-circle blue">
                                    <i class="fa fa-edit"></i>
                                </a>
                                <a href="javascript:;" class="btn btn-icon-only btn-circle red">
                                    <i class="fa fa-remove"></i>
                                </a>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
