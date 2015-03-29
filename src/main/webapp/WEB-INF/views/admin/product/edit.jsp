<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<div class="modal-dialog ">
    <form action="${ctx}/admin/product/save" method="post" id="productForm" enctype="multipart/form-data">
        <c:if test="${!empty(product)}">
            <input type="hidden" name="product.id" value="${product.id}"/>
        </c:if>
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">添加或编辑产品信息</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label for="title">名称 <small class="text-success">产品的名称</small></label>
                    <input type="text" name="product.title" class="form-control" id="title" placeholder="填写名称" value="${product.title}">
                </div>
                <div class="form-group">
                    <label for="type">分类 <small class="text-success">产品的分类</small></label>
                    <select name="product.type" id="type" class="form-control">
                        <c:forEach items="${types}" var="type">
                            <option value="${type}"  <c:if test="${product.type eq type}">selected</c:if>>${type}</option>
                        </c:forEach>
                    </select>
                </div>
               <%-- <div class="form-group">
                    <label for="imageFile">大图 <small class="text-success">产品的展示大图</small></label>
                    <input type="file" name="productFile" class="form-control" id="imageFile" placeholder="填写名称" value="${product.title}">
                </div>--%>
                <div class="form-group">
                    <label for="content">详细描述</label>
                    <textarea class="form-control editor" id="content" name="product.description"
                              style="height:200px;">${product.description}</textarea>
                </div>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="submit"  class="btn btn-primary">保存</button>
            </div>
        </div>
    </form>
</div>
<script>
    KindEditor.ready(function(K) {
        window.editor = K.create('.editor', {
            items : [ 'formatblock', 'fontname', 'fontsize',
                '|', 'forecolor', 'hilitecolor', 'bold', 'italic',
                'underline', 'strikethrough', '|', 'justifyleft',
                'justifycenter', 'justifyright', '|',
                'insertorderedlist', 'insertunorderedlist',
                 'indent', 'outdent','|', 'clearhtml' , 'fullscreen'],
            langType : 'zh_CN',
            width : '100%',
            afterBlur: function(){  //利用该方法处理当富文本编辑框失焦之后，立即同步数据
                KindEditor.sync(".editor") ;
            }
        });
    });
</script>
