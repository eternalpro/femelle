<%@tag pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<!-- footer -->
<div class="border margin50-t"></div>
<div class="footer">
    <div class="pull-left">
        <a href="${ctx}/">
            <div class="logo-b"></div>
        </a>

        <div>
            北京法米拉服装服饰有限公司（版权所有）
            |
            地址：北京市昌平区天通苑东三区２-２５
        </div>
        <div>
            ICP 备案号： 京ICP备13045393号-1
        </div>
    </div>
    <div class="pull-right margin30-t text-right">
        <p>

        <form action="${ctx}/subscribe" id="subscribeForm">
            <div class="input-append">
                <input type="text" name="email" class="btn" style="background: rgba(213, 211, 211, 0.9);"/>
                <button class="btn" type="button" id="subscribeBtn" style="background: rgba(252, 249, 249, 0.94)">
                    <i class="icon-envelope"></i> 订阅
                </button>
            </div>
        </form>
        </p>

        <p style="font-size: 23px;">
            www.alpha-femelle.com
        </p>

        <p>
            客服邮箱：service@alpha-femelle.com
        </p>
    </div>
</div>
<div class="footer-bottom">
    <div class="margin10-t pull-left">
        &copy;2015 alpha-femelle.com
    </div>

    <div class="margin10-t pull-right">
        <div id="wwImg" class="hide">
            <img src="${ctx}/resources/img/weixb2.png"
                 style="position: absolute; margin-top: -265px; right: 95px;"/>
        </div>
        <div class="pull-left">
            <a href="#" id="wwA">
                <img src="${ctx}/resources/img/weixin.png">
            </a>
        </div>
        <div class="pull-left margin10-l">
            <a href="http://weibo.com/alphafemelle" target="_blank">
                <img src="${ctx}/resources/img/weib.png" alt=""/>
            </a>
        </div>
    </div>
</div>
