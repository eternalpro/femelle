<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<layout:front menu="brand">
    <jsp:attribute name="css">
        <style>

        </style>
    </jsp:attribute>
    <jsp:attribute name="main">
        <div class="bg">
            <div class="container" style="width: 1124px;">
                <div class="bg-left">
                    <h4>品牌介绍</h4>
                    <c:set var="sidemenu" value="joinus" scope="request"/>
                    <jsp:include page="sidebar.jsp"/>
                </div>
                <div class="bg-right">
                    <img class="image" src="${ctx}/upload/${joinusInfo.filepath}" alt="" />
                    <div class="info atitle">
                        ${joinusInfo.title}
                    </div>
                    <div class="info acontent">
                        ${joinusInfo.content}
                    </div>
                </div>
            </div>
        </div>
    </jsp:attribute>
    <jsp:attribute name="js">
        <script>
            loadPage();
        </script>
    </jsp:attribute>
</layout:front>