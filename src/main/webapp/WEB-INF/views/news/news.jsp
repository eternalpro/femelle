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
                    <c:set var="sidemenu" value="news" scope="request"/>
                    <jsp:include page="sidebar.jsp"/>
                </div>
                <div class="bg-right">
                    <img class="image" src="${ctx}/upload/${newsInfo.filepath}" alt="" />
                    <div class="info atitle">
                        ${newsInfo.title}
                    </div>
                    <div class="info acontent">
                        ${newsInfo.content}
                            <div class="margin10-t">
                                <c:forEach items="${newses}" var="news">
                                    <table class="table-news table table-hover ">
                                        <tr>
                                            <td width="100" ><img src="${ctx}/upload/${news.imagepath}" alt=""/></td>
                                            <td class="border-left" style="border-left: 1px solid #DDD;">
                                                <strong>${news.title}</strong>
                                                <div>
                                                        ${news.content}
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
            var height = $('.bg-right').height();
            if(height < 500)
                height = 500;
            $('.bg-sidebar').css('height', height);
            $('.bg-right').css('height', height + 78);
        </script>
    </jsp:attribute>
</layout:front>