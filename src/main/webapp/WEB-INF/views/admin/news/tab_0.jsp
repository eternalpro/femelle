<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<!--时尚动态-->
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
        <form class="form-inline" id="fashionForm" method="post" action="${ctx}/admin/site/saveFashion" enctype="multipart/form-data">
            <div class="form-group">
                <label for="title">预览：</label>
                <img src="${ctx}/upload/${fashionInfo.filepath}" alt="" id="fashionImg"
                     style="height: 40px;"/>
            </div>

            <div class="form-group">
                <label for="title">标题：</label>
                <input type="text" class="form-control" name="fashionInfo.title" id="title" value="${fashionInfo.title}"
                       placeholder="请输入10个字以内">
            </div>
            <div class="form-group">
                <label>内容：</label>
                <input type="text" class="form-control" name="fashionInfo.content" value="${fashionInfo.content}"
                       placeholder="请输入39~57个字">
            </div>
            <div class="form-group">
                <label for="fashionFile">图片：</label>
                <input type="file" name="fashionFile" id="fashionFile" class="form-control"/>
            </div>
            <button type="submit" id="saveFashion" class="btn btn-primary">保存</button>
        </form>
    </div>
</div>

<div class="portlet light">
    <div class="portlet-title">
        <div class="caption">
            <i class="fa fa-gift font-green-sharp"></i>
            <span class="caption-subject font-green-sharp bold uppercase">设置时尚动态页图片</span>
            <small class="text-danger">
                推荐图片尺寸为1920*1080
            </small>
        </div>
    </div>
    <div class="portlet-body">
        <form class="form-inline" id="fashionImageForm" method="post" action="${ctx}/admin/site/saveFashionImage" enctype="multipart/form-data">
            <div class="form-group">
                <label for="title">预览：</label>
                <img src="${ctx}/upload/${fashionImageInfo.filepath}" alt="" id="fashionImage"
                     style="height: 40px;"/>
            </div>

            <div class="form-group">
                <label for="fashionImageFile">图片：</label>
                <input type="file" name="fashionImageFile" id="fashionImageFile" class="form-control"/>
            </div>
            <button type="submit" id="saveFashionImage" class="btn btn-primary">保存</button>
        </form>
    </div>
</div>

<div class="portlet light">
    <div class="portlet-title">
        <div class="caption">
            <i class="fa fa-gift font-green-sharp"></i>
            <span class="caption-subject font-green-sharp bold uppercase">时尚动态列表</span>
        </div>
        <div class="actions">
            <a href="${ctx}/admin/news/edit/fashion-0" class="btn btn-circle btn-sm news-edit" id="addNews">
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
                    <c:forEach items="${fashions}" var="fashion">
                        <tr>
                            <td>
                                <a href="${ctx}/upload/${fashion.imagepath}" class="fancybox">
                                    <img src="${ctx}/upload/${fashion.imagepath}" alt=""
                                         style="height: 40px;"/>
                                </a></td>
                            <td>${fashion.title}</td>
                            <td>${fashion.content}</td>
                            <td>
                                <c:choose>
                                    <c:when test="${fashion.ismain eq 'y'}">
                                        <a href="${ctx}/admin/news/set/fashion-n-${fashion.id}"
                                           class="btn btn-icon-only btn-circle green">
                                            <i class="fa fa-circle"></i>
                                        </a>
                                    </c:when>
                                    <c:otherwise>
                                        <a href="${ctx}/admin/news/set/fashion-y-${fashion.id}"
                                           class="btn btn-icon-only btn-circle red">
                                            <i class="fa fa-circle-o"></i>
                                        </a>
                                    </c:otherwise>
                                </c:choose>
                            </td>
                            <td>
                                <a href="${ctx}/admin/news/edit/fashion-${fashion.id}"
                                   class="btn btn-icon-only btn-circle blue news-edit">
                                    <i class="fa fa-edit"></i>
                                </a>
                                <a href="${ctx}/admin/news/delete/fashion-${fashion.id}"
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
