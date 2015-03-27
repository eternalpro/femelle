<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<layout:front>
    <jsp:attribute name="main">
        <div class="bg">
            <div class="container" style="width: 1124px;">
                <div class="bg-left">
                    <h4>合作支持</h4>   
                    <c:set var="sidemenu" value="tmall" scope="request"/>
                    <jsp:include page="sidebar.jsp"/>
                </div>
                <div class="bg-right">
                    <img class="image" src="${ctx}/upload/${tmallInfo.filepath}" alt="" />
                        <%--<div class="info atitle">
                            ${tmallInfo.title}
                        </div>--%>
                    <div class="info acontent-noborder">
                            ${tmallInfo.content}

                        <div class="link text-left margin200-l margin50-b margin50-t">
                            <p>唯品: <a href="http://brand.tmall.com/alphafemelle" target="_blank">http://brand.tmall.com/alphafemelle</a></p>
                            <p>天猫: <a href="http://famila.tmall.com" target="_blank">http://famila.tmall.com</a></p>
                        </div>
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