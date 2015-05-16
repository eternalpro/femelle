<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<layout:front menu="member">
    <jsp:attribute name="css">
        <style>

        </style>
    </jsp:attribute>
    <jsp:attribute name="main">
        <div class="bg">
            <div class="container">
                <div class="span12">
                    <div class="form-div">
                        <form action="${ctx}/member/loginMember" method="post">
                            <fieldset>
                                <legend>会员登录</legend>
                                <label>账号</label>
                                <input type="text" name="member.username" class="input-xlarge">
                                <label for="password">密码</label>
                                <input type="password" name="member.password" id="password" class="input-xlarge">

                                <p class="margin20-t">
                                    <button type="submit" class="btn pad20-l pad20-r btn-form btn-sign">登录</button>
                                    <button type="reset" class="btn pad20-l pad20-r btn-form btn-reset">取消</button>
                                </p>
                                <p class="margin20-t">
                                    没有账号？<a href="${ctx}/member/signup">请注册</a>
                                    |
                                    <a href="#" id="forgetPassword">忘记密码？</a>
                                </p>

                                <p>
                                    <span id="qqLoginBtn"></span>
                                    <wb:login-button type="3,2" onlogin="weiboLogin"></wb:login-button>
                                </p>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal hide fade" id="forgetPasswordModal">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h3>密码重置</h3>
            </div>
            <div class="modal-body">
                <div>请输入您注册时使用的邮箱地址：</div>
                <div>
                    <input type="text" id="registerEmail"/>
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
                <a href="${ctx}/member/forgetPassword" id="sendEmail" class="btn btn-primary">确定</a>
            </div>
        </div>
    </jsp:attribute>
    <jsp:attribute name="js">

        <script>
            // 微博登录成功！
            function weiboLogin(o) {
                location.href = "${ctx}/member/socialLogin?social=weibo&nickname=" + o.screen_name;
            }

            //调用QC.Login方法，指定btnId参数将按钮绑定在容器节点中
            QC.Login(
                    {
                        //btnId：插入按钮的节点id，必选
                        btnId: "qqLoginBtn",
                        //用户需要确认的scope授权项，可选，默认all
                        scope: "all",
                        //按钮尺寸，可用值[A_XL| A_L| A_M| A_S|  B_M| B_S| C_S]，可选，默认B_S
                        size: "B_M"
                    }, function (reqData, opts) {//登录成功
                        location.href = "${ctx}/member/socialLogin?social=qq&nickname=" + reqData.nickname + '&figureurl=' + reqData.figureurl;
                    }, function (opts) { //注销成功
                        alert('QQ登录 注销成功');
                    }
            );

            $('#forgetPassword').on('click', function (e) {
                e.preventDefault();
                $('#forgetPasswordModal').modal('show');
            });

            $('#sendEmail').on('click', function(e) {
                e.preventDefault();
                var email = $('#registerEmail').val();
                var $this = $(this);
                location.href = $this.attr('href') + '?email='+email;
            });
        </script>
    </jsp:attribute>
</layout:front>