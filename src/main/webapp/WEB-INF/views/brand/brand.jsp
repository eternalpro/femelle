<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<layout:front>
    <jsp:attribute name="css">
        <style>
            .bg-sidebar{
                height: 1105px;
            }
            .bg-right {
                height: 1185px;
            }
        </style>
    </jsp:attribute>
    <jsp:attribute name="main">
        <div class="bg">
            <div class="container" style="width: 1124px;">
                <div class="bg-left">
                    <h4>品牌介绍</h4>
                    <c:set var="sidemenu" value="brand" scope="request"/>
                    <jsp:include page="sidebar.jsp"/>
                </div>
                <div class="bg-right">
                    <img class="image" src="${ctx}/upload/${brandInfo.filepath}" alt="" />
                    <div class="info atitle">
                        ${brandInfo.title}
                    </div>
                    <div class="info acontent">
                        ${brandInfo.content}
                    </div>
                </div>
            </div>
        </div>
    </jsp:attribute>
    <jsp:attribute name="js">
        <script>
            (function(){
            })();
        </script>
    </jsp:attribute>
</layout:front>