<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<ul class="bg-sidebar">
    <li <c:if test="${sidemenu eq 'brand'}">class="active"</c:if> ><a href="${ctx}/brand">&nbsp;&nbsp;● 品牌故事</a></li>
    <li <c:if test="${sidemenu eq 'shop'}">class="active"</c:if> ><a href="${ctx}/brand/shop">&nbsp;&nbsp;● 门店位置</a></li>
    <li <c:if test="${sidemenu eq 'joinus'}">class="active"</c:if> ><a href="${ctx}/brand/joinus">&nbsp;&nbsp;● 加入我们</a></li>
    <li <c:if test="${sidemenu eq 'affiliate'}">class="active"</c:if> ><a href="${ctx}/brand/affiliate">&nbsp;&nbsp;● 加盟</a></li>
</ul>