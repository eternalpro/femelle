<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<div class="modal-dialog modal-sm">
    <form action="${ctx}/admin/savePassword" method="post" id="passwordForm">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">修改系统密码</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label for="old_password">原密码</label>
                    <input type="password" name="old_password" class="form-control" id="old_password">
                </div>
                <div class="form-group">
                    <label for="password">新密码</label>
                    <input type="password" name="password" class="form-control" id="password">
                </div>
                <div class="form-group">
                    <label for="confirm_password">确认密码</label>
                    <input type="password" name="confirm_password" class="form-control" id="confirm_password">
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
    $('#passwordForm').ajaxForm({
        success: function(data){
            toastr.info(data)
        }
    });
</script>