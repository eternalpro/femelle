<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<div class="modal-dialog modal-sm">
    <form action="${ctx}/admin/shop/save" method="post" id="shopForm">
        <c:if test="${!empty(shop)}">
            <input type="hidden" name="shop.id" value="${shop.id}"/>
        </c:if>
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">添加或编辑门店信息</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label for="province">省市</label>
                    <select class="form-control" name="shop.province" id="province">
                        <option value="北京市" <c:if test="${shop.province eq '北京市'}">selected </c:if>>北京市</option>
                        <option value="天津市" <c:if test="${shop.province eq '天津市'}">selected </c:if>>天津市</option>
                        <option value="河北省" <c:if test="${shop.province eq '河北省'}">selected </c:if>>河北省</option>
                        <option value="山西省" <c:if test="${shop.province eq '山西省'}">selected </c:if>>山西省</option>
                        <option value="内蒙古自治区" <c:if test="${shop.province eq '内蒙古自治区'}">selected </c:if>>内蒙古自治区</option>
                        <option value="辽宁省" <c:if test="${shop.province eq '辽宁省'}">selected </c:if>>辽宁省</option>
                        <option value="吉林省" <c:if test="${shop.province eq '吉林省'}">selected </c:if>>吉林省</option>
                        <option value="黑龙江省" <c:if test="${shop.province eq '黑龙江省'}">selected </c:if>>黑龙江省</option>
                        <option value="上海市" <c:if test="${shop.province eq '上海市'}">selected </c:if>>上海市</option>
                        <option value="江苏省" <c:if test="${shop.province eq '江苏省'}">selected </c:if>>江苏省</option>
                        <option value="浙江省" <c:if test="${shop.province eq '浙江省'}">selected </c:if>>浙江省</option>
                        <option value="安徽省" <c:if test="${shop.province eq '安徽省'}">selected </c:if>>安徽省</option>
                        <option value="福建省" <c:if test="${shop.province eq '福建省'}">selected </c:if>>福建省</option>
                        <option value="江西省" <c:if test="${shop.province eq '江西省'}">selected </c:if>>江西省</option>
                        <option value="山东省" <c:if test="${shop.province eq '山东省'}">selected </c:if>>山东省</option>
                        <option value="河南省" <c:if test="${shop.province eq '河南省'}">selected </c:if>>河南省</option>
                        <option value="湖北省" <c:if test="${shop.province eq '湖北省'}">selected </c:if>>湖北省</option>
                        <option value="湖南省" <c:if test="${shop.province eq '湖南省'}">selected </c:if>>湖南省</option>
                        <option value="广东省" <c:if test="${shop.province eq '广东省'}">selected </c:if>>广东省</option>
                        <option value="广西省" <c:if test="${shop.province eq '广西省'}">selected </c:if>>广西省</option>
                        <option value="海南省" <c:if test="${shop.province eq '海南省'}">selected </c:if>>海南省</option>
                        <option value="重庆市" <c:if test="${shop.province eq '重庆市'}">selected </c:if>>重庆市</option>
                        <option value="四川省" <c:if test="${shop.province eq '四川省'}">selected </c:if>>四川省</option>
                        <option value="贵州省" <c:if test="${shop.province eq '贵州省'}">selected </c:if>>贵州省</option>
                        <option value="云南省" <c:if test="${shop.province eq '云南省'}">selected </c:if>>云南省</option>
                        <option value="西藏自治区" <c:if test="${shop.province eq '西藏自治区'}">selected </c:if>>西藏自治区</option>
                        <option value="陕西省" <c:if test="${shop.province eq '陕西省'}">selected </c:if>>陕西省</option>
                        <option value="甘肃省" <c:if test="${shop.province eq '甘肃省'}">selected </c:if>>甘肃省</option>
                        <option value="青海省" <c:if test="${shop.province eq '青海省'}">selected </c:if>>青海省</option>
                        <option value="宁夏回族自治区" <c:if test="${shop.province eq '宁夏回族自治区'}">selected </c:if>>宁夏回族自治区</option>
                        <option value="新疆维吾尔族自治区" <c:if test="${shop.province eq '新疆维吾尔族自治区'}">selected </c:if>>新疆维吾尔族自治区</option>
                        <option value="香港" <c:if test="${shop.province eq '香港'}">selected </c:if>>香港</option>
                        <option value="澳门" <c:if test="${shop.province eq '澳门'}">selected </c:if>>澳门</option>
                        <option value="台湾省" <c:if test="${shop.province eq '台湾省'}">selected </c:if>>台湾省</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="title">名称</label>
                    <input type="text" name="shop.title" class="form-control" id="title" placeholder="填写名称" value="${shop.title}">
                </div>
                <div class="form-group">
                    <label for="address">地址</label>
                    <input type="text" name="shop.address" class="form-control" id="address" placeholder="填写详细地址信息" value="${shop.address}">
                </div>
                <div class="form-group">
                    <label for="tel">电话</label>
                    <input type="text" name="shop.tel" class="form-control" id="tel" placeholder="填写联系电话" value="${shop.tel}">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="submit"  class="btn btn-primary">保存</button>
            </div>
        </div>
    </form>
</div>
