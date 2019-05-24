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
	<form action="${pageContext.request.contextPath}/house/update" method="post">
	<table class="form-table">
	      <tr>
			<td>房屋编号</td>
			<td colspan="3" class="control">
				<input type="text" name="h_id" value="${house.hId}" readonly="readonly">
			</td>
		</tr>
		<tr>
			<td>地区</td>
			<td colspan="3" class="control">
				<input type="text" name="h_area" value="${house.hArea}">
			</td>
		</tr>
		<tr>
			<td>小区名字</td>
			<td colspan="3" class="control">
				<input type="text" name="h_estate" value="${house.hEstate}">
			</td>
		</tr>
		<tr>
			<td>单元号</td>
			<td colspan="3" class="control">
				<input type="text" name="h_unitNumber" value="${house.hUnitNumber}">
			</td>
		</tr>
		<tr>
			<td>楼层</td>
			<td colspan="3" class="control">
				<input type="text" name="h_floor"  value="${house.hFloor}">
			</td>
		</tr>
		<tr>
			<td>房间号</td>
			<td colspan="3" class="control">
				<input type="text" name="h_roomNo" value="${house.hRoomNo}">
			</td>
		</tr>
		<tr>
			<td>面积（平米）</td>
			<td colspan="3" class="control">
				<input type="text" name="h_acreage" value="${house.hAcreage}">
			</td>
		</tr>
		<tr>
			<td>朝向</td>
			<td colspan="3" class="control">
				<input type="text" name="h_direction" value="${house.hDirection}">
			</td>
		</tr>
		<tr>
			<td>装修</td>
			<td colspan="3" class="control">
				<input type="text" name="h_fitment"  value="${house.hFitment}">
			</td>
		</tr>
		<tr>
			<td>是否双气</td>
			<td colspan="3" class="control">
				<select name="h_isDoubleAir">
					<option value="0">是</option>
					<option value="1">否</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>限住人数</td>
			<td colspan="3" class="control">
				<input type="text" name="h_limit"  value="${house.hLimit}">
			</td>
		</tr>
		<tr>
			<td>配套设施</td>
			<td colspan="3" class="control">
				<input type="text" name="h_facility" value="${house.hFacility}">
			</td>
		</tr>
		<tr>
			<td>出租价格（元/月）</td>
			<td colspan="3" class="control">
				<input type="text" name="h_price" value="${house.hPrice}" >
			</td>
		</tr>
	    <tr>
			<td>房屋状态</td>
			<td colspan="3" class="control">
				<select name="h_status">
					<option value="1">未出租</option>
					<option value="2">已出租</option>
					<option value="3">停止出租</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>房屋图片</td>
			<td colspan="3" class="control">
				<input type="file" name="h_img" value="${house.hImg}">
			</td>
		</tr>
		<tr>
			<td>完整地址信息</td>
			<td colspan="3" class="control">
				<input type="text" name="h_address" value="${house.hAddress}">
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