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
	<h3>合同信息管理<a href="${pageContext.request.contextPath}/css/main.css"></a></h3>
	<div class="actions">
		<div>
			<a class="btn btn-primary" href="${pageContext.request.contextPath}/view/contract/add.jsp">添加合同信息</a>
		</div>
	</div>
   ${contracts}
	<table class="list">
		<tr>
			<th>合同编号</th>
			<th>房屋编号</th>
			<th>房屋地址</th>
			<th>租户编号</th>
			<th>租户姓名</th>
			<th>租户电话</th>
			<th>签署时间</th>
			<th>生效时间</th>
			<th>结束时间</th>
			<th>总金额</th>
			<th>押金</th>
			<th>签署人姓名</th>
			<th>合同状态</th>
			<th>房屋操作</th>
			
		</tr>
		<c:forEach  items="${contracts}"  var="contract">
		<tr>
			<td>${contract.c_id}</td>
			<td>${contract.h_id}</td>
			<td>${contract.h_address}</td>
			<td>${contract.l_id}</td>
			<td>${contract.l_name}</td>
			<td>${contract.l_tel}</td>
			<td>${contract.c_time}</td>
			<td>${contract.c_taketime}</td>
			<td>${contract.c_overtime}</td>
			<td>${contract.c_rental}</td>
			<td>${contract.c_cash}</td>
			<td>${contract.c_name}</td>
			<td>${contract.c_status}</td>
			
			<td>
				<a class="fa fa-info" title="详情" href="detail.html"></a>
				&nbsp;&nbsp;
				<a class="fa fa-pencil" title="编辑" href="${pageContext.request.contextPath}//contract/findbyid?c_id=${contract.c_id}"></a>
				&nbsp;&nbsp;
				<a class="fa fa-remove" title="删除" href="${pageContext.request.contextPath}/contract/delete?c_id=${contract.c_id}" onclick="confirmDelete(1)"></a>
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