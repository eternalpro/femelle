<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<layout:front>
    <jsp:attribute name="main">
        <header class="container margin20-t">
            <div class="row">
                <div class="span12">
                    <a class="logo pull-left" href="${ctx}"></a>

                    <div class="pull-right margin40-t">
                        <a href="#" class="color-black"><strong>登录</strong></a> |
                        <a href="#" class="color-black"><strong>注册</strong></a>
                    </div>
                </div>
            </div>
        </header>
        <div class="border"></div>
        <div class="container margin20-t menu">
            <div class="row">
                <ul class="span12">
                    <li>
                        <a href="#">品牌介绍</a>
                        <span class="split">|</span>
                    </li>
                    <li>
                        <a href="#">当季推荐</a>
                        <span class="split">|</span>
                    </li>
                    <li>
                        <a href="#">产品介绍</a>
                        <span class="split">|</span>
                    </li>
                    <li>
                        <a href="#">最新资讯</a>
                        <span class="split">|</span>
                    </li>
                    <li>
                        <a href="#">合作支持</a>
                        <span class="split">|</span>
                    </li>
                    <li>
                        <a href="#">会员中心</a>
                    </li>
                </ul>
            </div>
        </div>

        <!-- 中间大图内容 -->
        <div class="main">
            <div class="container">
                <div class="row">
                    <div class="span12">
                        <div style="margin-top: 400px; font-size: 24px; letter-spacing: 4px;">
                            INTELLECTUAL WOMEN'S GENTLE AND LOVELY AND ELEGANT
                        </div>
                    </div>
                </div>
                <div class="row margin40-t">
                    <div class="span4">
                        <div style="border-left: 1px solid #ffffff; height: 40px;"></div>
                        <div style="border-bottom: 1px solid #ffffff; margin-top: -20px"></div>
                    </div>
                    <div class="span4">
                        <div style="font-size: 24px; margin-top: 12px; text-align: center; letter-spacing: 6px;">
                            法米拉女装
                        </div>
                    </div>
                    <div class="span4">
                        <div style="border-right: 1px solid #ffffff; height: 40px;"></div>
                        <div style="border-bottom: 1px solid #ffffff; margin-top: -20px"></div>
                    </div>
                </div>
                <div class="row margin60-t">
                    <div class="span3"></div>
                    <div class="span6">
                        <div id="checkDetail" class="border-white" style="height: 100px; margin-left: 20px; margin-right: 20px; cursor: pointer; opacity: 0.8;">
                            <div style="font-size: 24px; margin-top: 20px; text-align: center; letter-spacing: 6px;">
                                CHECK THE DETAILS
                            </div>
                            <div style="font-size: 24px; margin-top: 20px; text-align: center; letter-spacing: 6px;">
                                查看详情
                            </div>
                        </div>
                    </div>
                    <div class="span3"></div>
                </div>
            </div>
        </div>

        <!-- 新品推荐 -->
        <div class="container">
            <div class="row">
                <div class="span4 margin20-t">
                    <img src="${ctx}/resources/img/left.png" alt=""/>
                </div>
                <div class="span4 text-center">
                    <h3>新品/推荐</h3>
                    <div>NEW PRODUCT RECOMMEDATION</div>
                </div>
                <div class="span4 margin20-t">
                    <img src="${ctx}/resources/img/right.png" alt=""/>
                </div>
            </div>
        </div>

        <!-- 关于我们 -->
        <div class="container">
            <div class="row">
                <div class="span4 margin20-t">
                    <img src="${ctx}/resources/img/left.png" alt=""/>
                </div>
                <div class="span4 text-center">
                    <h3>关于/我们</h3>
                    <div>ABOUT US</div>
                </div>
                <div class="span4 margin20-t">
                    <img src="${ctx}/resources/img/right.png" alt=""/>
                </div>
            </div>
        </div>

    </jsp:attribute>
    <jsp:attribute name="js">
        <script>
            (function(){
                $('.border-white').hover(function(){
                    $(this).anima({scaleX:0.6, scaleY:0.6}, 400);
                }, function(){
                    $(this).anima({scale:"1, 1"}, 400);
                });
            })();
        </script>
    </jsp:attribute>
</layout:front>
