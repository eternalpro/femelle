<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<layout:front>
    <jsp:attribute name="css">
        <style>
            .bg-sidebar{
                height: 505px;
            }
            .bg-right {
                height: 585px;
            }
        </style>
    </jsp:attribute>
    <jsp:attribute name="main">
        <div class="bg">
            <div class="container" style="width: 1124px;">
                <div class="bg-left">
                    <h4>会员中心</h4>
                    <c:set var="sidemenu" value="signup" scope="request"/>
                    <jsp:include page="sidebar.jsp"/>
                </div>
                <div class="bg-right">
                    <div class="info atitle">
                        会员注册
                    </div>
                    <div class="info acontent">
                        <h4 class="margin200-l">欢迎加入法米拉的优雅世界</h4>
                        <form class="margin30-t" action="${ctx}/member/saveMember" method="post">
                            <div class="span4">
                                <fieldset>
                                    <label>账号</label>
                                    <input type="text" name="member.username">
                                    <label for="password">密码</label>
                                    <input type="password" name="member.password" id="password">
                                    <label for="password_confirm">确认密码</label>
                                    <input type="password" name="password_confirm" id="password_confirm">
                                    <label for="address">联系地址</label>
                                    <input type="text" name="member.address" id="address">
                                    <div style="margin-left: 147px">
                                        <button type="submit" class="btn btn-primary pad20-l pad20-r">注册</button>
                                    </div>
                                </fieldset>
                            </div>
                            <div class="span4">
                                <fieldset>
                                    <label>电话</label>
                                    <input type="text" name="member.tel">
                                    <label>生日</label>
                                    <input type="text" name="member.birth">
                                    <label>性别</label>
                                    <select name="member.gender">
                                        <option value="男">男</option>
                                        <option value="女">女</option>
                                    </select>
                                    <label>邮箱</label>
                                    <input type="text" name="member.email">
                                    <div>
                                        <button type="reset" class="btn pad20-l pad20-r">取消</button>
                                    </div>
                                </fieldset>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="margin50-t"></div>
            </div>
        </div>
    </jsp:attribute>
    <jsp:attribute name="js">
        <script>
            (function () {
            })();
        </script>
    </jsp:attribute>
</layout:front>