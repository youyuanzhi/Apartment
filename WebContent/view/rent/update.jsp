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
	${rent}
	<form action="${pageContext.request.contextPath}/rent/update" method="post">
	<table class="form-table">
	<tr>
			<td>租金编号</td>
			<td colspan="3" class="control">
				<input type="text"  name="r_id"  value="${rent.r_id}" readonly="readonly">
			</td>
		</tr>
		<tr>
			<td>房屋编号</td>
			<td colspan="3" class="control">
				<input type="text"  name="h_id" value="${rent.h_id}" >
			</td>
		</tr>
		<tr>
			<td>租户编号</td>
			<td colspan="3" class="control">
				<input type="text"   name="l_id" value="${rent.l_id}">
			</td>
		</tr>
		<tr>
			<td>缴纳金额</td>
			<td colspan="3" class="control">
				<input type="text"  name="r_money" value="${rent.r_money}">
			</td>
		</tr>
		
		<tr>
			<td>租金备注</td>
			<td colspan="3" class="control">
				<input type="text"  name="r_remark" value="${rent.r_remark}">
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