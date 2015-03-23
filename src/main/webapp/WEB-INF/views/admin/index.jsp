<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<layout:admin menu="index">
    <jsp:attribute name="main">
        <div class="page-content-wrapper">
            <div class="page-content">
                <div class="page-head">
                    <div class="page-title">
                        <h1>站点设置
                            <small>与整站信息有关的设置</small>
                        </h1>
                    </div>
                </div>
                <!-- content -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="tabbable tabbable-custom tabbable-noborder  tabbable-reversed">
                            <ul class="nav nav-tabs">
                                <li class="active">
                                    <a href="#tab_0" data-toggle="tab" aria-expanded="true">
                                        首页 </a>
                                </li>
                                <li class="">
                                    <a href="#tab_1" data-toggle="tab" aria-expanded="false">
                                        品牌介绍 </a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" id="tab_0">
                                    <jsp:include page="tab_0.jsp"/>
                                </div>
                                <div class="tab-pane" id="tab_1">
                                    <jsp:include page="tab_1.jsp"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </jsp:attribute>
    <jsp:attribute name="js">
        <script>
            (function(){
                KindEditor.ready(function(K) {
                    window.editor = K.create('.editor', {
                        items : [ 'formatblock', 'fontname', 'fontsize',
                            '|', 'forecolor', 'hilitecolor', 'bold', 'italic',
                            'underline', 'strikethrough', '|', 'justifyleft',
                            'justifycenter', 'justifyright', '|',
                            'insertorderedlist', 'insertunorderedlist',
                            'indent', 'outdent'],
                        langType : 'zh_CN',
                        width : '100%',
                        afterBlur: function(){  //利用该方法处理当富文本编辑框失焦之后，立即同步数据
                            KindEditor.sync(".editor") ;
                        }
                    });
                });

                /**
                 * 保存品牌故事
                 */
                $('#brandForm').ajaxForm({
                    success: function(data){
                        toastr.success(data);
                    },
                    error: function(data){
                        toastr.error('系统错误，请联系管理员！');
                    }
                });

                /**
                 * 保存加入我们
                 */
                $('#joinusForm').ajaxForm({
                    success: function(data){
                        toastr.success(data);
                    },
                    error: function(data){
                        toastr.error('系统错误，请联系管理员！');
                    }
                });

                /**
                 * 保存加盟
                 */
                $('#affiliateForm').ajaxForm({
                    success: function(data){
                        toastr.success(data);
                    },
                    error: function(data){
                        toastr.error('系统错误，请联系管理员！');
                    }
                });
            })();
        </script>
    </jsp:attribute>
</layout:admin>