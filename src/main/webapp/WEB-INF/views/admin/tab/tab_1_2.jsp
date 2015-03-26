<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<!--门店位置-->
<div class="tab-pane" id="tab_1_2">
    <form role="form" id="shopForm" action="${ctx}/admin/site/saveShop" method="post" enctype="multipart/form-data">
        <div class="form-body">
            <div class="form-group">
                <label>展示图片：</label>
                <input type="file" class="form-control" name="shopFile">
            </div>
            <div class="form-group <c:if test='${empty(shopInfo.filepath)}'> hide </c:if>">
                <label>预览：</label>
                <a class="fancybox" href="${ctx}/upload/${shopInfo.filepath}">
                    <img id="shopImage" class="form-control" src="${ctx}/upload/${shopInfo.filepath}" alt=""
                     style="width: 80px; height: 60px;"/>
                </a>
            </div>
            <div class="form-group">
                <label>标题：</label>
                <input type="text" name="shopInfo.title" class="form-control" value="${shopInfo.title}"/>
            </div>

            <div class="form-group">
                <label>描述文字：</label>
                <textarea class="form-control editor" name="shopInfo.content"
                          style="height:200px;">${shopInfo.content}</textarea>
            </div>
        </div>
        <div class="form-actions">
            <button type="submit" class="btn blue">保存</button>
            <button type="button" class="btn default">取消</button>
        </div>
    </form>
</div>