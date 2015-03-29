<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                    aria-hidden="true">&times;</span></button>
            <h4 class="text-danger"><strong>最多8个进行推荐！</strong></h4>
        </div>
        <div class="modal-body">
            <div class="row">

                <c:forEach items="${products}" var="product">
                    <div class="col-xs-6 col-md-3">
                        <a title="${product.title}" href="${ctx}/upload/${product.imagepath}"
                           class="thumbnail fancybox">
                            <img src="${ctx}/upload/${product.imagepath}" alt="...">
                        </a>
                        <a href="${ctx}/admin/season/removeProduct/${product.id}"
                           class="fancybox-close detail-remove"
                           style="margin-right: 20px;" title="Close"></a>

                    </div>
                </c:forEach>
            </div>
        </div>

        <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        </div>
    </div>
    </form>
</div>
<script>
    (function () {
        $('a.detail-remove').on('click', function (e) {
            e.preventDefault();
            var $this = $(this);
            if (confirm('确定要删除吗？')) {
                $.get($this.attr('href'), function () {
                    $this.closest('.col-md-3').hide(1000);
                });
            }

        });
    })();
</script>