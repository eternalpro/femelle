<%@tag pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<script src="${ctx}/resources/js/jquery.js"></script>
<script src="${ctx}/resources/js/bootstrap.js"></script>
<script src="${ctx}/resources/js/animatescroll.min.js"></script>
<script src="${ctx}/resources/js/html5media.min.js"></script>
<script src="${ctx}/resources/mt/fancybox/jquery.fancybox.js"></script>
<script src="${ctx}/resources/js/menu.js"></script>
<script src="${ctx}/resources/mt/js/toastr.js" type="text/javascript"></script>
<script>
    ctx = '${ctx}';
    var success = '${FLASH_SUCCESS}';
    var warning = '${FLASH_WARNING}';
    var info = '${FLASH_INFO}';
    var error = '${FLASH_ERROR}';
    toastr.options = {
        "closeButton": true,
        "debug": false,
        "positionClass": "toast-top-center"
    };
    if(success) {
        toastr.success(success);
    }
    if(error) {
        toastr.error(error);
    }
    if(info) {
        toastr.info(info);
    }
    if(warning) {
        toastr.warning(warning);
    }
</script>