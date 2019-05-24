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
	<h3>添加合同信息</h3>
	<form action="${pageContext.request.contextPath}/contract/add" method="post">
	<table class="form-table">
		<tr>
			<td>房屋编号</td>
			<td colspan="3" class="control">
				<input type="text" name="h_id" placeholder="房屋编号">
			</td>
		</tr>
		<tr>
			<td>租户编号</td>
			<td colspan="3" class="control">
				<input type="text" name="l_id" placeholder="租户编号">
			</td>
		</tr>
		<tr>
			<td>签署时间</td>
			<td colspan="3" class="control">
				<input type="text" name="c_time" placeholder="签署时间">
			</td>
		</tr>
		<tr>
			<td>生效时间</td>
			<td colspan="3" class="control">
				<input type="text" name="c_taketime" placeholder="生效时间">
			</td>
		</tr>
		<tr>
			<td>结束时间</td>
			<td colspan="3" class="control">
				<input type="text" name="c_overtime" placeholder="结束时间">
			</td>
		</tr>
		<tr>
			<td>房租金额</td>
			<td colspan="3" class="control">
				<input type="text" name="c_rental" placeholder="房租金额">
			</td>
		</tr>
		<tr>
			<td>押金</td>
			<td colspan="3" class="control">
				<input type="text" name="c_cash" placeholder="押金">
			</td>
		</tr>
		<tr>
			<td>签署人姓名</td>
			<td colspan="3" class="control">
				<input type="text" name="c_name" placeholder="签署人姓名">
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