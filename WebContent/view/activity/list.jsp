<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>XX系统 - 活动信息管理</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/lib/font-awesome/css/font-awesome.css">
</head>

<body>
<div class="box">
	<h3>用户管理<a href="${pageContext.request.contextPath}/css/main.css"></a></h3>
	<div class="actions">
		<div>
			<a class="btn btn-primary" href="${pageContext.request.contextPath}/view/activity/add.jsp">添加活动</a>
		</div>
	</div>
   ${activities}
	<table class="list">
		<tr>
			<th>活动编号</th>
			<th>活动主题</th>
			<th>活动内容</th>
			<th>活动地址</th>
			<th>活动花费</th>
			<th>组织者</th>
			<th>举行时间</th>
			<th>用户操作</th>
		</tr>
		<c:forEach  items="${activities}"  var="activity">
		<tr>
			<td>${activity.a_id}</td>
			<td>${activity.a_subject}</td>
			<td>${activity.a_content}</td>
			<td>${activity.a_site}</td>
			<td>${activity.a_cost}</td>
			<td>${activity.a_organizer}</td>
			<td>${activity.a_taketime}</td>
			<td>
				<a class="fa fa-info" title="详情" href="detail.html"></a>
				&nbsp;&nbsp;
				<a class="fa fa-pencil" title="编辑" href="${pageContext.request.contextPath}/activity/findbyid?a_id=${activity.a_id}"></a>
				&nbsp;&nbsp;
				<a class="fa fa-remove" title="删除" href="${pageContext.request.contextPath}/activity/delete?a_id=${activity.a_id}" onclick="confirmDelete(1)"></a>
			</td>
		</tr>
		</c:forEach>
	</table>
	<div class="pager-info">
		<div>共有 1 条记录，第 1/1 页 </div>
		<div>
			<ul class="pagination">
				<li class="paginate_button previous disabled }">
				<a href="#">上一页</a>
				</li>
				<li class="paginate_button active"><a href="#">1</a></li>
				<li class="paginate_button next disabled">
				<a href="#">下一页</a>
				</li>
			</ul>
		</div>
	</div>
</div>
<script src="${pageContext.request.contextPath}/lib/jquery/jquery.js"></script>
<script>
function confirmDelete(id){
	if (confirm("确定要删除码？")) {
		alert('发送删除请求，刷新页面（不要异步）');
	}
	return false;
}
</script>
</body>
</html>