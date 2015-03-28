<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                    aria-hidden="true">&times;</span></button>
            <h4 class="text-danger"><strong>最多请选8个进行推荐！</strong></h4>
        </div>
        <div class="modal-body">
            <div class="row">
                <table class="table table-striped table-hover dataTable no-footer">
                    <thead>
                    <tr>
                        <th width="40">&nbsp;</th>
                        <th width="200">名称</th>
                        <th width="40">添加</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${products}" var="product">
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
                                <a href="${ctx}/admin/season/saveProduct/${tuijianId}-${product.id}"
                                   class="btn btn-icon-only btn-circle blue product-add">
                                    <i class="fa fa-plus"></i>
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>

            </div>
        </div>

        <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        </div>
    </div>
    </form>
</div>
<script>
    (function(){
        $('a.product-add').on('click', function(e){
            e.preventDefault();
            var $this = $(this);
            $.get($this.attr('href'), function(){
                $this.closest('tr').hide(300);
            });
        });
    })();
</script>