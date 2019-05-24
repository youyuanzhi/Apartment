<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>智游公寓系统 - 租户信息修改</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="box">
	<h3>修改租户信息</h3>
	<form action="${pageContext.request.contextPath}/lessee/update" method="post">
	<table class="form-table">
		<tr>
			<td>租户序号</td>
			<td colspan="3" class="control">
				<input type="text" name="l_id" value="${lessee.l_id}" readonly="readonly">
			</td>
		</tr>
		<tr>
			<td>租户姓名</td>
			<td colspan="3" class="control">
				<input type="text" name="l_name" value="${lessee.l_name}" >
			</td>
		</tr>
		<tr>
			<td>租户电话</td>
			<td colspan="3" class="control">
				<input type="text" name="l_tel" value="${lessee.l_tel}" >
			</td>
		</tr>
		<tr>
			<td>租户性别</td>
	
			<td colspan="3" class="control">
				<input type="text" name="l_sex"  value="${lessee.l_sex}">
			</td>
			</td>
		</tr>
		<tr>
			<td>租户籍贯</td>
			<td colspan="3" class="control">
				<input type="text" name="l_nativeplace"  value="${lessee.l_nativeplace}">
			</td>
		</tr>
		<tr>
			<td>身份证号</td>
			<td colspan="3" class="control">
				<input type="text" name="l_idcard" value="${lessee.l_idcard}">
			</td>
		</tr>
	</table>
	<div class="buttons">
		<input class="btn btn-primary va-bottom" type="submit" value="保存">&nbsp;&nbsp;
		<a class="btn btn-default" href="javascript:history.go(-1)">返回</a>
	</div>
	</form>
</div>
</body>
</html>