<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<layout:admin menu="member">
    <jsp:attribute name="main">
        <div class="page-content-wrapper">
            <div class="page-content">
                <div class="page-head">
                    <div class="page-title">
                        <h1>会员管理
                            <small>管理所有已注册的会员信息</small>
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
                                        <span class="caption-subject font-green-sharp bold uppercase">会员列表</span>
                                    </div>

                                    <div class="actions">
                                       <%--<a href="${ctx}/admin/member/writeMail" class="btn btn-circle btn-sm shop-edit blue" id="addShop">
                                            <i class="icon-envelope"></i> 推送邮件 </a>--%>

                                        <a class="btn btn-circle btn-icon-only btn-default fullscreen" href="javascript:;" data-original-title="">
                                        </a>
                                    </div>

                                </div>
                                <div class="portlet-body">
                                    <div class="table-container">
                                        <div class="table-scrollable">
                                            <table class="table table-striped table-hover dataTable no-footer">
                                                <thead>
                                                <tr>
                                                    <th width="30" class="table-checkbox">
                                                        <input type="checkbox">
                                                    </th>
                                                    <th width="10">用户名</th>
                                                    <th width="10">性别</th>
                                                    <th width="80">邮箱</th>
                                                    <th width="180">地址</th>
                                                    <th width="50">电话</th>
                                                    <th width="50">生日</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach items="${members}" var="member">
                                                    <tr>
                                                        <td>
                                                            <input type="checkbox" class="mail-checkbox mail-group-checkbox">
                                                        </td>
                                                        <td>${member.username}</td>
                                                        <td>${member.gender}</td>
                                                        <td>${member.email}</td>
                                                        <td>${member.address}</td>
                                                        <td>${member.tel}</td>
                                                        <td>${member.birth}</td>
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
    </jsp:attribute>
    <jsp:attribute name="js">
        <script>
            (function(){
                $('.shop-edit').on('click', function(e){
                    e.preventDefault();
                    var $this = $(this);
                    $.get($this.attr('href'), function(data){
                        $('.modal').html(data).modal('show');
                    })
                });

                $('.shop-delete').on('click', function(){
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