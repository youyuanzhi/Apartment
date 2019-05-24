<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>XX系统 - 房屋信息管理</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/lib/font-awesome/css/font-awesome.css">
</head>

<body>
<div class="box">
	<h3>角色管理<a href="${pageContext.request.contextPath}/css/main.css"></a></h3>
	<div class="actions">
		<div>
			<a class="btn btn-primary" href="${pageContext.request.contextPath}/view/role/add.jsp">添加角色</a>
		</div>
	</div>
   ${roles}
	<table class="list">
		<tr>
			<th>序号</th>
			<th>角色名称</th>
			<th>角色权限</th>
			<th>角色操作</th>
		</tr>
		<c:forEach  items="${roles}"  var="role">
		<tr>
			<td>${role.r_id}</td>
			<td>${role.r_name}</td>
			<td>${role.r_desc}</td>
			
			<td>
				<a class="fa fa-info" title="详情" href="detail.html"></a>
				&nbsp;&nbsp;
				<a class="fa fa-pencil" title="编辑" href="${pageContext.request.contextPath}/role/findbyid?r_id=${role.r_id}"></a>
				&nbsp;&nbsp;
				<a class="fa fa-remove" title="删除" href="${pageContext.request.contextPath}/role/delete?r_id=${role.r_id}" onclick="confirmDelete(1)"></a>
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