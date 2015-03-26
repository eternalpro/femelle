<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<!--新闻资讯-->
<div class="portlet light">
  <div class="portlet-title">
    <div class="caption">
      <i class="fa fa-gift font-green-sharp"></i>
      <span class="caption-subject font-green-sharp bold uppercase">新闻资讯列表</span>
    </div>
    <div class="actions">
      <a href="${ctx}/admin/news/edit/news-0" class="btn btn-circle btn-sm news-edit" id="addNews">
        <i class="fa fa-plus"></i> 添加 </a>

      <a class="btn btn-circle btn-icon-only btn-default fullscreen" href="javascript:;" data-original-title="" title="">
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
            <th width="80">标题</th>
            <th width="180">内容</th>
            <th width="50">操作</th>
          </tr>
          </thead>
          <tbody>
          <c:forEach items="${newses}" var="news">
            <tr>
              <td>
                <a href="${ctx}/upload/${news.imagepath}" class="fancybox">
                  <img src="${ctx}/upload/${news.imagepath}" alt="" style="width: 50px; height: 40px;"/>
                </a>
              </td>
              <td>${news.title}</td>
              <td>${news.content}</td>
              <td>
                <a href="${ctx}/admin/news/edit/news-${news.id}" class="btn btn-icon-only btn-circle blue news-edit">
                  <i class="fa fa-edit"></i>
                </a>
                <a href="${ctx}/admin/news/delete/news-${news.id}" class="btn btn-icon-only btn-circle red news-delete">
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
