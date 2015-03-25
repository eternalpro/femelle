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
                        <option value="北京" <c:if test="${shop.province eq '北京'}">selected </c:if>>北京</option>
                        <option value="天津" <c:if test="${shop.province eq '天津'}">selected </c:if>>天津</option>
                        <option value="河北" <c:if test="${shop.province eq '河北'}">selected </c:if>>河北</option>
                        <option value="山西" <c:if test="${shop.province eq '山西'}">selected </c:if>>山西</option>
                        <option value="内蒙古" <c:if test="${shop.province eq '内蒙古'}">selected </c:if>>内蒙古</option>
                        <option value="辽宁" <c:if test="${shop.province eq '辽宁'}">selected </c:if>>辽宁</option>
                        <option value="吉林" <c:if test="${shop.province eq '吉林'}">selected </c:if>>吉林</option>
                        <option value="黑龙江" <c:if test="${shop.province eq '黑龙江'}">selected </c:if>>黑龙江</option>
                        <option value="上海" <c:if test="${shop.province eq '上海'}">selected </c:if>>上海</option>
                        <option value="江苏" <c:if test="${shop.province eq '江苏'}">selected </c:if>>江苏</option>
                        <option value="浙江" <c:if test="${shop.province eq '浙江'}">selected </c:if>>浙江</option>
                        <option value="安徽" <c:if test="${shop.province eq '安徽'}">selected </c:if>>安徽</option>
                        <option value="福建" <c:if test="${shop.province eq '福建'}">selected </c:if>>福建</option>
                        <option value="江西" <c:if test="${shop.province eq '江西'}">selected </c:if>>江西</option>
                        <option value="山东" <c:if test="${shop.province eq '山东'}">selected </c:if>>山东</option>
                        <option value="河南" <c:if test="${shop.province eq '河南'}">selected </c:if>>河南</option>
                        <option value="湖北" <c:if test="${shop.province eq '湖北'}">selected </c:if>>湖北</option>
                        <option value="湖南" <c:if test="${shop.province eq '湖南'}">selected </c:if>>湖南</option>
                        <option value="广东" <c:if test="${shop.province eq '广东'}">selected </c:if>>广东</option>
                        <option value="广西" <c:if test="${shop.province eq '广西'}">selected </c:if>>广西</option>
                        <option value="海南" <c:if test="${shop.province eq '海南'}">selected </c:if>>海南</option>
                        <option value="重庆" <c:if test="${shop.province eq '重庆'}">selected </c:if>>重庆</option>
                        <option value="四川" <c:if test="${shop.province eq '四川'}">selected </c:if>>四川</option>
                        <option value="贵州" <c:if test="${shop.province eq '贵州'}">selected </c:if>>贵州</option>
                        <option value="云南" <c:if test="${shop.province eq '云南'}">selected </c:if>>云南</option>
                        <option value="西藏" <c:if test="${shop.province eq '西藏'}">selected </c:if>>西藏</option>
                        <option value="陕西" <c:if test="${shop.province eq '陕西'}">selected </c:if>>陕西</option>
                        <option value="甘肃" <c:if test="${shop.province eq '甘肃'}">selected </c:if>>甘肃</option>
                        <option value="青海" <c:if test="${shop.province eq '青海'}">selected </c:if>>青海</option>
                        <option value="宁夏" <c:if test="${shop.province eq '宁夏'}">selected </c:if>>宁夏</option>
                        <option value="新疆" <c:if test="${shop.province eq '新疆'}">selected </c:if>>新疆</option>
                        <option value="香港" <c:if test="${shop.province eq '香港'}">selected </c:if>>香港</option>
                        <option value="澳门" <c:if test="${shop.province eq '澳门'}">selected </c:if>>澳门</option>
                        <option value="台湾" <c:if test="${shop.province eq '台湾'}">selected </c:if>>台湾</option>
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
