<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<layout:front>
    <jsp:attribute name="main">
        <div class="container margin20-t">
            <div class="row">
                <div class="span12">
                    <a class="logo pull-left" href="${ctx}"></a>

                    <div class="pull-right margin40-t">
                        <a href="#" class="color-black"><strong>登录</strong></a> |
                        <a href="#" class="color-black"><strong>注册</strong></a>
                    </div>
                </div>
            </div>
        </div>
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
                        <div id="checkDetail" class="border-white"
                             style="height: 100px; margin-left: 20px; margin-right: 20px; cursor: pointer; opacity: 0.8;">
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

                    <div>
                        <small>NEW PRODUCT RECOMMEDATION</small>
                    </div>
                </div>
                <div class="span4 margin20-t">
                    <img src="${ctx}/resources/img/right.png" alt=""/>
                </div>
            </div>

            <!--春夏秋冬-->
            <div class="row margin40-t">
                <div class="span3 ">
                    <div class="text-center">SPRING</div>
                    <img src="${ctx}/resources/img/split-s.png" alt=""/>
                </div>
                <div class="span3">
                    <div class="text-center">SUMMER</div>
                    <img src="${ctx}/resources/img/split-s.png" alt=""/>
                </div>
                <div class="span3">
                    <div class="text-center">AUTUMN</div>
                    <img src="${ctx}/resources/img/split-s.png" alt=""/>
                </div>
                <div class="span3">
                    <div class="text-center">WINTER</div>
                    <img src="${ctx}/resources/img/split-s.png" alt=""/>
                </div>

            </div>

            <!--四副图-->
            <div class="row margin30-t" style="margin-left: 0px">
                <ul class="thumbnails">
                    <li class="span3">
                        <a href="#" class="thumbnail">
                            <img src="${ctx}/resources/img/p1.png" >
                        </a>
                    </li>
                    <li class="span3">
                        <a href="#" class="thumbnail">
                            <img src="${ctx}/resources/img/p2.png" alt="">
                        </a>
                    </li>
                    <li class="span3">
                        <a href="#" class="thumbnail">
                            <img src="${ctx}/resources/img/p3.png" alt="">
                        </a>
                    </li>
                    <li class="span3">
                        <a href="#" class="thumbnail">
                            <img src="${ctx}/resources/img/p4.png" alt="">
                        </a>
                    </li>
                </ul>
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

            <!-- 新闻热点 -->
            <div class="row margin40-t" style="margin-left: 0px">
                <ul class="thumbnails">
                    <li class="span4">
                        <div class="thumbnail">
                            <img src="${ctx}/resources/img/a1.png" alt="">
                            <h2 class="text-center">新闻</h2>

                            <div class="text-center pad10">
                                <p class="text-left">9月9日，中国高端时尚女装HPLY（荷比俪）2015夏季订购会上海总部拉开帷幕了……</p>
                                <button class="btn ">
                                    <strong class="margin30-l margin30-r">more+</strong>
                                </button>
                            </div>

                        </div>
                    </li>
                    <li class="span4">
                        <div class="thumbnail">
                            <img src="${ctx}/resources/img/a1.png" alt="">
                            <h2 class="text-center">服装资讯</h2>
                            <div class="text-center pad10">
                                <p class="text-left">JEAN PAUL GAULTIER 最后成衣系列大秀明天就要在LE GRAND EREX辉煌上演了……</p>
                                <button class="btn ">
                                    <strong class="margin30-l margin30-r">more+</strong>
                                </button>
                            </div>
                        </div>
                    </li>
                    <li class="span4">
                        <div class="thumbnail">
                            <img src="${ctx}/resources/img/a1.png" alt="">
                            <h2 class="text-center">时尚动态</h2>
                            <div class="text-center pad10">
                                <p class="text-left">巴黎时装周第一天一般都会平平淡淡的度过，但今年一众先锋小牌带给了我们太多惊喜……</p>
                                <button class="btn ">
                                    <strong class="margin30-l margin30-r">more+</strong>
                                </button>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>

        <!-- footer -->
        <div class="border margin50-t margin50-b"></div>
        <div class="container margin50-b">
            <div class="row">
                <div class="span12 text-center">
                    <h3>关注我们</h3>
                    <a href="#"><img src="${ctx}/resources/img/weibo.png" alt=""/></a>
                    <a href="#"><img src="${ctx}/resources/img/wechat.png" alt=""/></a>
                </div>
            </div>
        </div>
    </jsp:attribute>
    <jsp:attribute name="js">
        <script>
            (function () {
                $('.border-white').hover(function () {
                }, function () {
                });
            })();
        </script>
    </jsp:attribute>
</layout:front>
