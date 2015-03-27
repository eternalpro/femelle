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
                                    <a href="#tab_0" data-toggle="tab" aria-expanded="true"> 当季推荐 </a>
                                </li>
                                <li class="active">
                                    <a href="#tab_1" data-toggle="tab" aria-expanded="false"> 所有产品 </a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane" id="tab_0">
                                    <jsp:include page="tab_0.jsp"/>
                                </div>
                                <div class="tab-pane active" id="tab_1">
                                    <jsp:include page="tab_1.jsp"/>
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
                $('.product-edit').on('click', function(e){
                    e.preventDefault();
                    var $this = $(this);
                    $.get($this.attr('href'), function(data){
                        $('.modal').html(data).modal('show');
                    })
                });


            })();
        </script>
    </jsp:attribute>
</layout:admin>