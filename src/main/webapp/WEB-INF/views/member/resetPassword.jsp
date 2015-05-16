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
                        <form action="${ctx}/member/savePassword" method="post">
                            <input type="hidden" name="email" value="${email}">
                            <fieldset>
                                <legend>密码重置</legend>
                                <label for="password">新密码</label>
                                <input type="password" name="password" id="password" class="input-xlarge">
                                <label for="confirmPassword">确认密码</label>
                                <input type="password" name="confirmPassword" id="confirmPassword"
                                       class="input-xlarge">

                                <p class="margin20-t">
                                    <button type="submit" class="btn pad20-l pad20-r btn-form btn-sign">
                                        确定
                                    </button>
                                    <button type="reset" class="btn pad20-l pad20-r btn-form btn-reset">
                                        取消
                                    </button>
                                </p>
                                <p class="margin20-t">
                                    不想重置密码？<a href="${ctx}/member/login">请登录</a>
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