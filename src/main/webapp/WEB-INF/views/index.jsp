<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<layout:front>
    <jsp:attribute name="main">

        <!-- 中间大图内容 -->
        <div class="main">
            <a href="#"><img src="${ctx}/images/bg.jpg" alt=""/></a>
        </div>

        <!-- 新品推荐 -->
        <div class="container" id="new">
            <div class="row">
                <div class="span4 margin20-t">
                    <img src="${ctx}/resources/img/left.png" alt=""/>
                </div>
                <div class="span4 text-center">
                    <h3>新品/推荐</h3>
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
        <div class="container" id="about">
            <div class="row">
                <div class="span4 margin20-t">
                    <img src="${ctx}/resources/img/left.png" alt=""/>
                </div>
                <div class="span4 text-center">
                    <h3>关于/我们</h3>
                </div>
                <div class="span4 margin20-t">
                    <img src="${ctx}/resources/img/right.png" alt=""/>
                </div>
            </div>

            <div class="row margin40-t">
                <div class="span2"></div>
                <div class="span8">
                    <embed src="${videoInfo.filepath}" allowFullScreen="true" quality="high" class="span8" height="450" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
                </div>
                <div class="span2"></div>
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

        <a href="#"><img class="arrowdown" src="${ctx}/resources/img/arrowdown2.png" alt=""/></a>

    </jsp:attribute>
    <jsp:attribute name="js">
        <script>
            (function () {

                // 屏幕滚动事件
                $(window).scroll(function(){
                    var top = $(document).scrollTop();
                    if(top > 1700) {
                        $('img.arrowdown').addClass('flip');
                    }else{
                        $('img.arrowdown').removeClass('flip');
                    }
                });

                // 点击向下箭头
                $('img.arrowdown').on('click', function(e){
                    e.preventDefault();
                    var $this = $(this);
                    var top = $(document).scrollTop();
                    if($this.hasClass('flip')) {
                        $('html').animatescroll({});
                    }else{
                        if(top < 1100) {
                            $('div#new').animatescroll({});
                        }else{
                            $('div#about').animatescroll({});
                        }
                    }
                });
            })();
        </script>
    </jsp:attribute>
</layout:front>
