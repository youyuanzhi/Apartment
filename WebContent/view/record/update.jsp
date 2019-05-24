<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>XX系统 - 房屋信息添加</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="box">
	<h3>所选的用户信息</h3>
	${re_remark}
	<form action="${pageContext.request.contextPath}/record/update" method="post">
	<table class="form-table">
	<tr>
			<td>修缮编号</td>
			<td colspan="3" class="control">
				<input type="text"  name="re_id"  value="${record.re_id}" readonly="readonly">
			</td>
		</tr>
		<tr>
			<td>房屋编号</td>
			<td colspan="3" class="control">
				<input type="text"  name="h_id" value="${record.h_id}" >
			</td>
		</tr>
		<tr>
			<td>人员编号</td>
			<td colspan="3" class="control">
				<input type="text"  name="lo_id" value="${record.lo_id}">
			</td>
		</tr>
		<tr>
			<td>备注信息</td>
			<td colspan="3" class="control">
				<input type="text"  name="re_remark" value="${record.re_remark}">
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