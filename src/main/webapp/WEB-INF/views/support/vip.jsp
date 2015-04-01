<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<layout:front menu="support">
    <jsp:attribute name="css">
    </jsp:attribute>
    <jsp:attribute name="main">
        <div class="bg">
            <div class="container" style="width: 1124px;">
                <div class="bg-left">
                    <h4>合作支持</h4>
                    <c:set var="sidemenu" value="vip" scope="request"/>
                    <jsp:include page="sidebar.jsp"/>
                </div>
                <div class="bg-right">

                    <img class="image" src="${ctx}/upload/${vipInfo.filepath}" alt="" />

                    <div class="info acontent-noborder">
                        ${vipInfo.content}
                        <div class="link text-left margin200-l margin50-b margin50-t">
                            <p>唯品: <a href="http://brand.vip.com/alphafemelle" target="_blank">http://brand.vip.com/alphafemelle</a></p>
                            <p>天猫: <a href="http://famila.tmall.com" target="_blank">http://famila.tmall.com</a></p>
                        </div>
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