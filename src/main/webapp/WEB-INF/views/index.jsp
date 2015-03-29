<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<layout:front>
    <jsp:attribute name="css">
        <style>
            .rslides {
                position: relative;
                list-style: none;
                overflow: hidden;
                width: 100%;
                padding: 0;
                margin: 0;
            }

            .rslides li {
                -webkit-backface-visibility: hidden;
                position: absolute;
                display: none;
                width: 100%;
                left: 0;
                top: 0;
            }

            .rslides li:first-child {
                position: relative;
                display: block;
                float: left;
            }

            .rslides img {
                display: block;
                height: auto;
                float: left;
                width: 100%;
                border: 0;
            }
        </style>
    </jsp:attribute>
    <jsp:attribute name="main">

        <!-- 中间大图内容 -->
        <div class="main">

            <ul class="rslides">
                <c:forEach items="${images}" var="image">
                    <li>
                        <a href="#">
                            <img src="${ctx}/upload/${image.path}" alt=""/>
                        </a>
                    </li>
                </c:forEach>
            </ul>

        </div>

        <!-- 新品推荐 -->
        <div class="container" id="new">
            <div class="row">
                <div class="span4 margin20-t">
                    <img src="${ctx}/resources/img/left.png" alt=""/>
                </div>
                <div class="span4 text-center">
                    <h3>${modulenewsInfo.title}</h3>
                </div>
                <div class="span4 margin20-t">
                    <img src="${ctx}/resources/img/right.png" alt=""/>
                </div>
            </div>

            <!--春夏秋冬-->
            <div class="row margin40-t">
                <c:forEach items="${tuijians}" var="tuijian">
                    <div class="span3 ">
                        <div class="text-center">${tuijian.title}</div>
                        <img src="${ctx}/resources/img/split-s.png" alt=""/>
                    </div>
                </c:forEach>

            </div>

            <!--四副图-->
            <div class="row margin30-t" style="margin-left: 0px">
                <ul class="thumbnails picL " id="picLsy">
                    <c:forEach items="${tuijians}" var="tuijian">
                        <li class="span3">
                            <a href="${ctx}/season/${tuijian.id}" class="thumbnail">
                                <img src="${ctx}/upload/${tuijian.imagepath}" style="height: 300px;">

                                <div class="text">
                                    <p>
                                            ${tuijian.memo}
                                    </p>
                                </div>
                            </a>
                        </li>
                    </c:forEach>
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
                    <h3>${moduleaboutInfo.title}</h3>
                </div>
                <div class="span4 margin20-t">
                    <img src="${ctx}/resources/img/right.png" alt=""/>
                </div>
            </div>

            <div class="row margin40-t">
                <div class="span2"></div>
                <div class="span8">
                    <embed src="${videoInfo.filepath}" allowFullScreen="true" quality="high" class="span8" height="450"
                           align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
                </div>
                <div class="span2"></div>
            </div>

            <!-- 新闻热点 -->
            <div class="row margin40-t" style="margin-left: 0px">
                <ul class="thumbnails">
                    <li class="span4">
                        <div class="thumbnail">
                            <img src="${ctx}/resources/img/a1.png" alt="">

                            <h2 class="text-center">搭配图集</h2>

                            <div class="text-center pad10">
                                <p class="text-left">
                                    在siteinfo里保存“搭配图集信息”
                                </p>
                                <button class="btn ">
                                    <strong class="margin30-l margin30-r">more+</strong>
                                </button>
                            </div>

                        </div>
                    </li>
                    <li class="span4">
                        <div class="thumbnail">
                            <img src="${ctx}/upload/${fashionInfo.filepath}" alt="">

                            <h2 class="text-center">
                                ${fashionInfo.title}
                            </h2>

                            <div class="text-center pad10">
                                <p class="text-left">
                                    ${fashionInfo.content}
                                </p>
                                <button class="btn ">
                                    <strong class="margin30-l margin30-r">more+</strong>
                                </button>
                            </div>
                        </div>
                    </li>
                    <li class="span4">
                        <div class="thumbnail">
                            <img src="${ctx}/upload/${newsInfo.filepath}" alt="">

                            <h2 class="text-center">
                                ${newsInfo.title}
                            </h2>
                            <div class="text-center pad10">
                                <p class="text-left">
                                    ${newsInfo.content}
                                </p>
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
                $(".rslides").responsiveSlides();

                $("#picLsy li").hover(function () {
                    $(this).find('.text:not(:animated)').animate({top: "150px"}, {easing: "easeInOutExpo"}, 60, function () {
                    });
                }, function () {
                    $(this).find('.text').animate({top: "300px"}, {easing: "easeInOutExpo"}, 50, function () {
                    });
                });

                // 屏幕滚动事件
                $(window).scroll(function () {
                    if ($('img.arrowdown').offset().top > $('div.footer').offset().top) {
                        $('img.arrowdown').addClass('flip');
                    } else {
                        $('img.arrowdown').removeClass('flip');
                    }
                });

                // 点击向下箭头
                $('img.arrowdown').on('click', function (e) {
                    e.preventDefault();
                    var $this = $(this);
                    var top = $(document).scrollTop();
                    if ($this.hasClass('flip')) {
                        $('html').animatescroll({scrollSpeed: 3000, easing: 'easeInQuad'});
                    } else {
                        $('div.footer').animatescroll({scrollSpeed: 3000, easing: 'easeInQuad'});
                    }
                });
            })();
        </script>
    </jsp:attribute>
</layout:front>
