<%@tag pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
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
<div class="container margin20-t margin50-b">
    <div class="row">
        <div class="span12">
            <ul class="menu">
                <li class="active" data-target="s1">
                    <a href="#">品牌介绍</a>
                    <ul class="s-menu s1">
                        <li>
                            <a href="${ctx}/brand">品牌故事</a>
                        </li>
                        <li>
                            <a href="${ctx}/brand/shop">门店位置</a>
                        </li>
                        <li>
                            <a href="${ctx}/brand/joinus">加入我们</a>
                        </li>
                        <li class="lastItem">
                            <a style="border-bottom: 0px;" href="${ctx}/brand/affiliate">加盟</a>
                        </li>
                    </ul>
                </li>
                <li data-target="s2">
                    <a href="#">当季推荐</a>
                    <ul class="s-menu s2">
                        <li>
                            <a href="${ctx}/brand">春</a>
                        </li>
                        <li>
                            <a href="${ctx}/brand/shop">夏</a>
                        </li>
                        <li>
                            <a href="${ctx}/brand/joinus">秋</a>
                        </li>
                        <li class="lastItem">
                            <a style="border-bottom: 0px;" href="${ctx}/brand/affiliate">冬</a>
                        </li>
                    </ul>
                </li>
                <li data-target="s3">
                    <a href="#">产品介绍</a>
                    <ul class="s-menu s3">
                        <li>
                            <a href="${ctx}/product/大衣">大衣</a>
                        </li>
                        <li>
                            <a href="${ctx}/product/毛衣">毛衣</a>
                        </li>
                        <li>
                            <a href="${ctx}/product/风衣">风衣</a>
                        </li>
                        <li>
                            <a href="${ctx}/product/连衣裙">连衣裙</a>
                        </li>
                        <li>
                            <a href="${ctx}/product/短裙">短裙</a>
                        </li>
                        <li>
                            <a href="${ctx}/product/裤子">裤子</a>
                        </li>
                        <li class="lastItem">
                            <a style="border-bottom: 0px;" href="${ctx}/product/皮革">皮革</a>
                        </li>
                    </ul>
                </li>
                <li data-target="s4">
                    <a href="#">最新资讯</a>
                    <ul class="s-menu s4">
                        <li>
                            <a href="${ctx}/news">时尚动态</a>
                        </li>
                        <li>
                            <a href="${ctx}/news/video">宣传视频</a>
                        </li>
                        <li>
                            <a href="${ctx}/news/fashion">搭配图集</a>
                        </li>
                        <li class="lastItem">
                            <a style="border-bottom: 0px;" href="${ctx}/news/news">新闻资讯</a>
                        </li>
                    </ul>
                </li>
                <li data-target="s5">
                    <a href="#">合作支持</a>
                    <ul class="s-menu s5">
                        <li>
                            <a href="${ctx}/support/vip">唯品会</a>
                        </li>
                        <li class="lastItem">
                            <a style="border-bottom: 0px;" href="${ctx}/support/tmall">天猫</a>
                        </li>
                    </ul>
                </li>
                <li data-target="s6">
                    <a style="border-right: 0px;" href="#">会员中心</a>
                    <ul class="s-menu s6">
                        <li>
                            <a href="${ctx}/brand">联系我们</a>
                        </li>
                        <li>
                            <a href="${ctx}/brand/shop">常见问题</a>
                        </li>
                        <li class="lastItem">
                            <a style="border-bottom: 0px;" href="${ctx}/brand/affiliate">会员注册</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>