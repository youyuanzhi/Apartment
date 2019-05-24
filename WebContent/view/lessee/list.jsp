<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>智游公寓系统 - 租户信息管理</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/lib/font-awesome/css/font-awesome.css">
</head>

<body>
<div class="box">
	<h3>租户管理<a href="${pageContext.request.contextPath}/css/main.css"></a></h3>
	<div class="actions">
		<div>
			<a class="btn btn-primary" href="${pageContext.request.contextPath}/view/lessee/add.jsp">添加租户</a>
		</div>
	</div>
   ${lessees}
	<table class="list">
		<tr>
			<th>序号</th>
			<th>租户姓名</th>
			<th>租户电话</th>
			<th>租户性别</th>
			<th>租户籍贯</th>
			<th>身份证号</th>
			<th>添加时间</th>
			<th>租户操作</th>
		</tr>
		<c:forEach  items="${lessees}"  var="lessee">
		<tr>
			<td>${lessee.l_id}</td>
			<td>${lessee.l_name}</td>
			<td>${lessee.l_tel}</td>
			<td>${lessee.l_sex}</td>
			<td>${lessee.l_nativeplace}</td>
			<td>${lessee.l_idcard}</td>
			<td>${lessee.l_addtime}</td>
			<td>
				<a class="fa fa-info" title="详情" href="detail.html"></a>
				&nbsp;&nbsp;
				<a class="fa fa-pencil" title="编辑" href="${pageContext.request.contextPath}/lessee/findbyid?l_id=${lessee.l_id}"></a>
				&nbsp;&nbsp;
				<a class="fa fa-remove" title="删除" href="${pageContext.request.contextPath}/lessee/delete?l_id=${lessee.l_id}" onclick="confirmDelete(1)"></a>
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