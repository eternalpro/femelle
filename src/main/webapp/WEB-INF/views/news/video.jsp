<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<layout:front menu="news">
    <jsp:attribute name="css">
        <style>

        </style>
    </jsp:attribute>
    <jsp:attribute name="main">
        <div class="bg">
            <div class="container" style="width: 1124px;">
                <div class="bg-left">
                    <h4>最新资讯</h4>
                    <c:set var="sidemenu" value="video" scope="request"/>
                    <jsp:include page="sidebar.jsp"/>
                </div>
                <div class="bg-right">
                    <embed src="${video.url}" allowFullScreen="true" quality="high"
                           width="100%"
                           height="450px"
                           align="middle" allowScriptAccess="always" type="application/x-shockwave-flash" wmode="opaque"></embed>
                    <p class="margin20-t margin30-l">
                            ${video.description}

                    </p>
                    <div class="info atitle">
                        宣传视频
                    </div>
                    <div class="info acontent">
                        <div class="margin10-t">
                            <c:forEach items="${videos}" var="video">
                                <table class="table-news table table-hover ">
                                    <tr>
                                        <td width="150">
                                            <a href="${ctx}/video/${video.id}"><img src="${ctx}/upload/${video.imagepath}" style="width: 150px;" alt=""/></a>
                                        </td>
                                        <td class="border-left" style="border-left: 1px solid #DDD;">
                                            <div>
                                                ${video.description}
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </c:forEach>
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