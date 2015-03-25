<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<!--时尚动态-->
<div class="portlet light">
  <div class="portlet-title">
    <div class="caption">
      <i class="fa fa-gift font-green-sharp"></i>
      <span class="caption-subject font-green-sharp bold uppercase">时尚动态列表</span>
    </div>
    <div class="actions">
      <a href="${ctx}/admin/news/edit/fashion-0" class="btn btn-circle btn-sm news-edit" id="addNews">
        <i class="fa fa-plus"></i> 添加 </a>
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
          <c:forEach items="${fashions}" var="fashion">
            <tr>
              <td>
                <a href="${ctx}/upload/${fashion.imagepath}" class="fancybox">
                  <img src="${ctx}/upload/${fashion.imagepath}" alt="" style="width: 50px; height: 40px;"/>
                </a>              </td>
              <td>${fashion.title}</td>
              <td>${fashion.content}</td>
              <td>
                <a href="${ctx}/admin/news/edit/fashion-${fashion.id}" class="btn btn-icon-only btn-circle blue news-edit">
                  <i class="fa fa-edit"></i>
                </a>
                <a href="${ctx}/admin/news/delete/fashion-${fashion.id}" class="btn btn-icon-only btn-circle red news-delete">
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
