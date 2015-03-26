<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<layout:front>
    <jsp:attribute name="main">
        <div class="bg">
            <div class="container" style="width: 1124px;">
                <div class="bg-left">
                    <h4>最新资讯</h4>
                    <c:set var="sidemenu" value="fashion" scope="request"/>
                    <jsp:include page="sidebar.jsp"/>
                </div>
                <div class="bg-right">
                    <img class="image" src="${ctx}/upload/${fashionInfo.filepath}" alt="" />
                    <div class="info atitle">
                        ${fashionInfo.title}
                    </div>
                    <div class="info acontent">
                        ${fashionInfo.content}
                    </div>
                </div>
            </div>
        </div>
    </jsp:attribute>
    <jsp:attribute name="js">
        <script>
            (function(){
                $('ul.bg-sidebar').height($('.bg-right').height()-75);
            })();
        </script>
    </jsp:attribute>
</layout:front>