<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>XX系统 - 修缮记录管理</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/lib/font-awesome/css/font-awesome.css">
</head>

<body>
<div class="box">
	<h3>修缮记录管理管理<a href="${pageContext.request.contextPath}/css/main.css"></a></h3>
	<div class="actions">
		<div>
			<a class="btn btn-primary" href="${pageContext.request.contextPath}/view/record/add.jsp">添加修缮记录</a>
		</div>
	</div>
   ${records}
	<table class="list">
		<tr>
			<th>修缮序号</th>
			<th>房屋编号</th>
			<th>所在地区</th>
			<th>所属小区</th>
			<th>单元号</th>
			<th>所属楼层</th>
			<th>房间号</th>
			
			<th>人员编号</th>
			<th>人员姓名</th>
			<th>人员电话</th>
			<th>修缮时间</th>
			<th>备注</th>
			<th>房屋操作</th>
			
		</tr>
		<c:forEach  items="${records}"  var="record">
		<tr>
			<td>${record.re_id}</td>
			<td>${record.h_id}</td>
			<td>${record.h_area}</td>
			<td>${record.h_estate}</td>
			<td>${record.h_unitNumber}</td>
			<td>${record.h_floor}</td>
			<td>${record.h_roomNo}</td>
			<td>${record.lo_id}</td>
			<td>${record.lo_name}</td>
			<td>${record.lo_tel}</td>
			<td>${record.re_time}</td>
			<td>${record.re_remark}</td>

			<td>
				<a class="fa fa-info" title="详情" href="detail.html"></a>
				&nbsp;&nbsp;
				<a class="fa fa-pencil" title="编辑" href="${pageContext.request.contextPath}/record/findbyid?re_id=${record.re_id}"></a>
				&nbsp;&nbsp;
				<a class="fa fa-remove" title="删除" href="${pageContext.request.contextPath}/record/delete?re_id=${record.re_id}" onclick="confirmDelete(1)"></a>
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