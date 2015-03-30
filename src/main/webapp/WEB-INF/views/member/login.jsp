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
                <div class="bg-right margin100-b">
                    <div class="info atitle">
                        会员注册
                    </div>
                    <div class="info acontent">
                        <h4 class="margin200-l">欢迎加入法米拉的优雅世界</h4>
                        <form class="margin30-t" action="${ctx}/member/loginMember" method="post">
                            <div class="span4">
                                <fieldset>
                                    <label>账号</label>
                                    <input type="text" name="member.username">
                                    <label for="password">密码</label>
                                    <input type="password" name="member.password" id="password">

                                    <div style="margin-left: 70px">
                                        <button type="submit" class="btn pad20-l pad20-r">登录</button>
                                    </div>
                                </fieldset>
                            </div>


                            <div class="span4">
                                <div style="border-left: 1px solid #c6c6c6; height: 200px; float: left"></div>
                                <fieldset class="text-center">
                                    <p>新用户</p>
                                    <p>创建新账号，让购物更简单</p>
                                    <div>
                                        <a href="${ctx}/member/signup" class="btn pad20-l pad20-r">创建新用户</a>
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