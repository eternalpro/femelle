<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<layout:front>
    <jsp:attribute name="main">
        <div class="bg">
            <div class="container" style="width: 1124px;">
                <div class="bg-left">
                    <h4>品牌介绍</h4>
                    <ul class="bg-sidebar">
                        <li><a href="#">&nbsp;&nbsp;● 品牌故事</a></li>
                        <li><a href="#">&nbsp;&nbsp;● 门店位置</a></li>
                        <li><a href="#">&nbsp;&nbsp;● 加入我们</a></li>
                        <li><a href="#">&nbsp;&nbsp;● 加盟</a></li>
                    </ul>
                </div>
                <div class="bg-right">
                    <img class="image" src="${ctx}/upload/${brandInfo.imagepath}" alt="" />
                    <div id="title" class="info">
                        ${brandInfo.title}
                    </div>
                    <div id="content" class="info">
                        ${brandInfo.content}
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