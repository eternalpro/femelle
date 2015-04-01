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
                                <input type="text" name="member.username"  class="input-xlarge">
                                <label for="password">密码</label>
                                <input type="password" name="member.password" id="password"  class="input-xlarge">
                                <p class="margin20-t">
                                    <button type="submit" class="btn pad20-l pad20-r btn-form btn-sign" >登录</button>
                                    <button type="reset" class="btn pad20-l pad20-r btn-form btn-reset" >取消</button>
                                </p>
                                <p class="margin20-t">
                                    没有账号？<a href="${ctx}/member/signup">请注册</a>
                                </p>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </jsp:attribute>
    <jsp:attribute name="js">
        <script>

        </script>
    </jsp:attribute>
</layout:front>