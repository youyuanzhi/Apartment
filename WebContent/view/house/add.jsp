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
	<form action="${pageContext.request.contextPath}/house/add" method="post">
	<table class="form-table">
		<tr>
			<td>地区</td>
			<td colspan="3" class="control">
				<input type="text" name="h_area" placeholder="填写地区">
			</td>
		</tr>
		<tr>
			<td>小区名字</td>
			<td colspan="3" class="control">
				<input type="text" name="h_estate" placeholder="小区名字">
			</td>
		</tr>
		<tr>
			<td>单元号</td>
			<td colspan="3" class="control">
				<input type="text" name="h_unitNumber" placeholder="单元号">
			</td>
		</tr>
		<tr>
			<td>楼层</td>
			<td colspan="3" class="control">
				<input type="text" name="h_floor" placeholder="楼层">
			</td>
		</tr>
		<tr>
			<td>房间号</td>
			<td colspan="3" class="control">
				<input type="text" name="h_roomNo" placeholder="房间号">
			</td>
		</tr>
		<tr>
			<td>面积（平米）</td>
			<td colspan="3" class="control">
				<input type="text" name="h_acreage" placeholder="面积">
			</td>
		</tr>
		<tr>
			<td>朝向</td>
			<td colspan="3" class="control">
				<input type="text" name="h_direction" placeholder="朝向">
			</td>
		</tr>
		<tr>
			<td>装修</td>
			<td colspan="3" class="control">
				<input type="text" name="h_fitment" placeholder="装修">
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
				<input type="text" name="h_limit" placeholder="限住人数">
			</td>
		</tr>
		<tr>
			<td>配套设施</td>
			<td colspan="3" class="control">
				<input type="text" name="h_facility" placeholder="配套设施">
			</td>
		</tr>
		<tr>
			<td>出租价格（元/月）</td>
			<td colspan="3" class="control">
				<input type="text" name="h_price" placeholder="出租价格">
			</td>
		</tr>
	
		<tr>
			<td>房屋图片</td>
			<td colspan="3" class="control">
				<input type="file" name="h_img" placeholder="房屋图片">
			</td>
		</tr>
		<tr>
			<td>完整地址信息</td>
			<td colspan="3" class="control">
				<input type="text" name="h_address" placeholder="完整地址信息">
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