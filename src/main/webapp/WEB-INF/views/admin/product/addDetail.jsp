<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<div class="modal-dialog ">
    <form action="${ctx}/admin/product/detail/save" method="post" id="productForm" enctype="multipart/form-data">
        <input type="hidden" name="productId" value="${productId}"/>
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">
                    添加商品图
                    <small class="text-danger">
                        推荐图片尺寸为1080*1920
                    </small>
                </h4>
            </div>
            <div class="modal-body">

                <div class="form-group">
                    <label for="imageFile1">1. 商品图</label>
                    <input type="file" name="productDetail1" class="form-control" id="imageFile1" placeholder="填写名称" value="${product.title}">
                </div>
                <div class="form-group">
                    <label for="imageFile2">2. 商品图</label>
                    <input type="file" name="productDetail2" class="form-control" id="imageFile2" placeholder="填写名称" value="${product.title}">
                </div>
                <div class="form-group">
                    <label for="imageFile3">3. 商品图</label>
                    <input type="file" name="3" class="form-control" id="imageFile3" placeholder="填写名称" value="${product.title}">
                </div>
                <div class="form-group">
                    <label for="imageFile4">4. 商品图</label>
                    <input type="file" name="productDetail4" class="form-control" id="imageFile4" placeholder="填写名称" value="${product.title}">
                </div>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="submit"  class="btn btn-primary">保存</button>
            </div>
        </div>
    </form>
</div>