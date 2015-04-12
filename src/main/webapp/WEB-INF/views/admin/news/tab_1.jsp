<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<!--新闻资讯-->

<div class="portlet light">
    <div class="portlet-title">
        <div class="caption">
            <i class="fa fa-gift font-green-sharp"></i>
            <span class="caption-subject font-green-sharp bold uppercase">设置首页信息</span>
            <small class="text-danger">
                推荐图片尺寸为1920*1080
            </small>
        </div>
    </div>
    <div class="portlet-body">
        <form class="form-inline" id="newsForm" method="post" action="${ctx}/admin/site/saveNews"
              enctype="multipart/form-data">

            <div class="form-group">
                <label for="title">预览：</label>
                <img src="${ctx}/upload/${newsInfo.filepath}" alt="" id="newsImg"
                     style="height: 40px;"/>
            </div>

            <div class="form-group">
                <label for="title">标题：</label>
                <input type="text" class="form-control" name="newsInfo.title" id="title" placeholder="请输入10个字以内" value="${newsInfo.title}">
            </div>
            <div class="form-group">
                <label>内容：</label>
                <input type="text" class="form-control" name="newsInfo.content" value="${newsInfo.content}"
                       placeholder="请输入39~57个字">
            </div>
            <div class="form-group">
                <label for="newsFile">图片：</label>
                <input type="file" name="newsFile" id="newsFile" class="form-control"/>
            </div>
            <button type="submit" id="saveNews" class="btn btn-primary">保存</button>
        </form>
    </div>
</div>

<div class="portlet light">
    <div class="portlet-title">
        <div class="caption">
            <i class="fa fa-gift font-green-sharp"></i>
            <span class="caption-subject font-green-sharp bold uppercase">设置新闻资讯页图片</span>
            <small class="text-danger">
                推荐图片尺寸为1920*1080
            </small>
        </div>
    </div>
    <div class="portlet-body">
        <form class="form-inline" id="newsImageForm" method="post" action="${ctx}/admin/site/saveNewsImage" enctype="multipart/form-data">
            <div class="form-group">
                <label for="title">预览：</label>
                <img src="${ctx}/upload/${newsImageInfo.filepath}" alt="" id="newsImage"
                     style="height: 40px;"/>
            </div>

            <div class="form-group">
                <label for="newsImageFile">图片：</label>
                <input type="file" name="newsImageFile" id="newsImageFile" class="form-control"/>
            </div>
            <button type="submit" id="saveNewsImage" class="btn btn-primary">保存</button>
        </form>
    </div>
</div>

<div class="portlet light">
    <div class="portlet-title">
        <div class="caption">
            <i class="fa fa-gift font-green-sharp"></i>
            <span class="caption-subject font-green-sharp bold uppercase">新闻资讯列表</span>
        </div>
        <div class="actions">
            <a href="${ctx}/admin/news/edit/news-0" class="btn btn-circle btn-sm news-edit" id="addNews">
                <i class="fa fa-plus"></i> 添加 </a>

            <a class="btn btn-circle btn-icon-only btn-default fullscreen" href="javascript:;" data-original-title=""
               title="">
            </a>
        </div>
    </div>
    <div class="portlet-body">
        <div class="table-container">
            <div class="table-scrollable">
                <table class="table table-striped table-hover dataTable no-footer">
                    <thead>
                    <tr>
                        <th width="10"></th>
                        <th width="100">标题</th>
                        <th>内容</th>
                        <th width="20">首页显示</th>
                        <th width="120">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${newses}" var="news">
                        <tr>
                            <td>
                                <a href="${ctx}/upload/${news.imagepath}" class="fancybox">
                                    <img src="${ctx}/upload/${news.imagepath}" alt=""
                                         style="height: 40px;"/>
                                </a>
                            </td>
                            <td>${news.title}</td>
                            <td>${news.content}</td>
                            <td>
                                <c:choose>
                                    <c:when test="${news.ismain eq 'y'}">
                                        <a href="${ctx}/admin/news/set/news-n-${news.id}"
                                           class="btn btn-icon-only btn-circle green">
                                            <i class="fa fa-circle"></i>
                                        </a>
                                    </c:when>
                                    <c:otherwise>
                                        <a href="${ctx}/admin/news/set/news-y-${news.id}"
                                           class="btn btn-icon-only btn-circle red">
                                            <i class="fa fa-circle-o"></i>
                                        </a>
                                    </c:otherwise>
                                </c:choose>
                            </td>
                            <td>
                                <a href="${ctx}/admin/news/edit/news-${news.id}"
                                   class="btn btn-icon-only btn-circle blue news-edit">
                                    <i class="fa fa-edit"></i>
                                </a>
                                <a href="${ctx}/admin/news/delete/news-${news.id}"
                                   class="btn btn-icon-only btn-circle red news-delete">
                                    <i class="fa fa-remove"></i>
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
