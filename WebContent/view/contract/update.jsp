<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>智游公寓系统 - 房屋信息添加</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/main.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="box">
	<h3>添加房屋信息</h3>
	<form action="${pageContext.request.contextPath}/contract/update" method="post">
	<table class="form-table">
	      <tr>
			<td>合同编号</td>
			<td colspan="3" class="control">
				<input type="text" name="c_id" value="${contract.c_id}" readonly="readonly">
			</td>
		</tr>
		<tr>
			<td>房屋编号</td>
			<td colspan="3" class="control">
				<input type="text" name="h_id" value="${contract.h_id}">
			</td>
		</tr>
		<tr>
			<td>租户编号</td>
			<td colspan="3" class="control">
				<input type="text" name="l_id" value="${contract.l_id}">
			</td>
		</tr>
		<tr>
			<td>签署时间</td>
			<td colspan="3" class="control">
				<input type="text" name="c_time" value="${contract.c_time}">
			</td>
		</tr>
		<tr>
			<td>生效时间</td>
			<td colspan="3" class="control">
				<input type="text" name="c_taketime"  value="${contract.c_taketime}">
			</td>
		</tr>
		<tr>
			<td>结束时间</td>
			<td colspan="3" class="control">
				<input type="text" name="c_overtime" value="${contract.c_overtime}">
			</td>
		</tr>
		<tr>
			<td>房租金额</td>
			<td colspan="3" class="control">
				<input type="text" name="c_rental" value="${contract.c_rental}">
			</td>
		</tr>
		<tr>
			<td>押金</td>
			<td colspan="3" class="control">
				<input type="text" name="c_cash" value="${contract.c_cash}">
			</td>
		</tr>
		<tr>
			<td>签署人姓名</td>
			<td colspan="3" class="control">
				<input type="text" name="c_name"  value="${contract.c_name}">
			</td>
		</tr>
		<tr>
			<td>合同状态</td>
			<td colspan="3" class="control">
				<input type="text" name="c_status"  value="${contract.c_status}">
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