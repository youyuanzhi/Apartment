<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>智游公寓系统 - 房租信息添加</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="box">
	<h3>添加房屋信息</h3>
	<form action="${pageContext.request.contextPath}/logistics/add" method="post">
	<table class="form-table">
	
		<tr>
			<td>人员姓名</td>
			<td colspan="3" class="control">
				<input type="text" name="lo_name" placeholder="人员姓名">
			</td>
		</tr>
		<tr>
			<td>身份证号</td>
			<td colspan="3" class="control">
				<input type="text" name="lo_idcard" placeholder="身份证号">
			</td>
		</tr>
		<tr>
			<td>手机号码</td>
			<td colspan="3" class="control">
				<input type="text" name="lo_tel" placeholder="手机号码">
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