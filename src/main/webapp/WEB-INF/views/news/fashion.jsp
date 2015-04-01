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
                    <c:set var="sidemenu" value="fashion" scope="request"/>
                    <jsp:include page="sidebar.jsp"/>
                </div>
                <div class="bg-right">
                    <img class="image" src="${ctx}/upload/${fashionInfo.filepath}" alt=""/>

                    <div class="info atitle">
                            ${fashionInfo.title}
                    </div>
                    <div class="info acontent">
                            ${fashionInfo.content}
                        <div class="margin10-t">
                            <c:forEach items="${fashions}" var="fashion">
                                <table class="table-news table table-hover ">
                                    <tr>
                                        <td width="100" ><img src="${ctx}/upload/${fashion.imagepath}" alt=""/></td>
                                        <td class="border-left" style="border-left: 1px solid #DDD;">
                                            <a href="${ctx}/news/view/${fashion.id}">
                                                <strong>${fashion.title}</strong>
                                            </a>
                                            <div>
                                                ${fashion.content}
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