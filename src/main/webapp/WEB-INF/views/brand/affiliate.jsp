<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<layout:front>
    <jsp:attribute name="css">
        <style>

        </style>
    </jsp:attribute>
    <jsp:attribute name="main">
        <div class="bg">
            <div class="container" style="width: 1124px;">
                <div class="bg-left">
                    <h4>品牌介绍</h4>
                    <c:set var="sidemenu" value="affiliate" scope="request"/>
                    <jsp:include page="sidebar.jsp"/>
                </div>
                <div class="bg-right">
                    <img class="image" src="${ctx}/upload/${affiliateInfo.filepath}" alt="" />
                    <div class="info atitle">
                        ${affiliateInfo.title}
                    </div>
                    <div class="info acontent">
                        ${affiliateInfo.content}
                    </div>
                </div>
            </div>
        </div>
    </jsp:attribute>
    <jsp:attribute name="js">
        <script>
            var height = $('.bg-right').height();
            if(height < 500)
                height = 500;
            $('.bg-sidebar').css('height', height);
            $('.bg-right').css('height', height + 78);
        </script>
    </jsp:attribute>
</layout:front>