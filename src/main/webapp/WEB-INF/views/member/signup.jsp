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
                        <form action="${ctx}/member/saveMember" method="post">
                            <fieldset>
                                <legend>会员注册</legend>
                                <label>账号</label>
                                <input type="text" name="member.username" class="input-xlarge">
                                <label for="password">密码</label>
                                <input type="password" name="member.password" id="password" class="input-xlarge" >
                                <label for="password_confirm">确认密码</label>
                                <input type="password" name="password_confirm" id="password_confirm" class="input-xlarge" >
                                <label for="address">联系地址</label>
                                <input type="text" name="member.address" id="address" class="input-xlarge" >
                                <label>电话</label>
                                <input type="text" name="member.tel" class="input-xlarge" >
                                <label>生日</label>
                                <input type="text" name="member.birth" class="input-xlarge" >
                                <label>性别</label>
                                <select name="member.gender" class="input-xlarge" >
                                    <option value="男">男</option>
                                    <option value="女">女</option>
                                </select>
                                <label>邮箱</label>
                                <input type="text" name="member.email" class="input-xlarge" >
                                <label class="checkbox">
                                    <input type="checkbox" name="agree"> 同意条款
                                    <a href="${ctx}/provision" id="provision" target="_blank">&lt;查看服务条款&gt;</a>
                                </label>

                                <p class="margin20-t">
                                    <button type="submit" class="btn pad20-l pad20-r btn-form btn-sign" >注册</button>
                                    <button type="reset" class="btn pad20-l pad20-r btn-form btn-reset" >取消</button>
                                </p>
                                <p class="margin20-t">
                                    已有账号？<a href="${ctx}/member/login">请登录</a>
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