<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<div class="modal-dialog ">
    <form action="${ctx}/admin/album/saveItem" method="post" id="productForm" enctype="multipart/form-data">
        <input type="hidden" name="albumId" value="${albumId}"/>
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">添加细节图</h4>
            </div>
            <div class="modal-body">

                <div class="form-group">
                    <label for="imageFile1">1. 细节图</label>
                    <input type="file" name="albumDetail1" class="form-control" id="imageFile1">
                </div>
                <div class="form-group">
                    <label for="imageFile2">2. 细节图</label>
                    <input type="file" name="albumDetail2" class="form-control" id="imageFile2">
                </div>
                <div class="form-group">
                    <label for="imageFile3">3. 细节图</label>
                    <input type="file" name="3" class="form-control" id="imageFile3">
                </div>
                <div class="form-group">
                    <label for="imageFile4">4. 细节图</label>
                    <input type="file" name="albumDetail4" class="form-control" id="imageFile4">
                </div>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="submit"  class="btn btn-primary">保存</button>
            </div>
        </div>
    </form>
</div>