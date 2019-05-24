<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>XX系统 - 房屋信息管理</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/lib/font-awesome/css/font-awesome.css">
</head>

<body>
<div class="box">
	<h3>房屋信息管理<a href="${pageContext.request.contextPath}/css/main.css"></a></h3>
	<div class="actions">
		<div>
			<a class="btn btn-primary" href="${pageContext.request.contextPath}/view/house/add.jsp">添加房屋信息</a>
		</div>
	</div>
	
<%-- 	<form action="${pageContext.request.contextPath}/HouseSel">
		小区<input name="section1" >
		<button></button>
	</form> --%>
  
	<table class="list">
		<tr>
			<th>房屋序号</th>
			<th>所属地区</th>
			<th>所属小区</th>
			<th>单元号</th>
			<th>所属楼层</th>
			<th>房间号</th>
			<th>面积</th>
			<th>朝向</th>
			<th>装修</th>
			<th>是否双气</th>
			<th>限主人数</th>
			<th>配套设施</th>
			<th>出租价格</th>
			<th>房屋状态</th>
			<th>房屋图片</th>
			<th>房屋地址</th>
			<th>添加时间</th>
			<th>修改时间</th>
			<th>房屋操作</th>
			
		</tr>
		<c:forEach  items="${pb.beanList}"  var="house">
		<tr>
			<td>${house.hId}</td>
			<td>${house.hArea}</td>
			<td>${house.hEstate}</td>
			<td>${house.hUnitNumber}</td>
			<td>${house.hFloor}</td>
			<td>${house.hRoomNo}</td>
			<td>${house.hAcreage}</td>
			<td>${house.hDirection}</td>
			<td>${house.hFitment}</td>
			<td>${house.hIsDoubleAir}</td>
			<td>${house.hLimit}</td>
			<td>${house.hFacility}</td>
			<td>${house.hPrice}</td>
			<td>${house.hStatus}</td>
			<td>${house.hImg}</td>
			<td>${house.hAddress}</td>
			<td>${house.hAddTime}</td>
			<td>${house.hUpdateTime}</td>
			<td>
				<a class="fa fa-info" title="详情" href="detail.html"></a>
				&nbsp;&nbsp;
				<a class="fa fa-pencil" title="编辑" href="${pageContext.request.contextPath}/house/findbyid?h_id=${house.hId}"></a>
				&nbsp;&nbsp;
				<a class="fa fa-remove" title="删除" href="${pageContext.request.contextPath}/house/delete?h_id=${house.hId}" onclick="confirmDelete(1)"></a>
			</td>
		</tr>
		</c:forEach>
	</table>
	<div class="pager-info">
			<div>共有${pb.tr} 条记录，第 ${pb.pc}/${pb.tp } 页 </div>
		<div>
   <ul class="pagination">
      <c:if test="${pb.pc>1}">
         <li class="paginate_button previous disabled }" >
            <a href="${pageContext.request.contextPath}/HousePageServlet?pc=${pb.pc-1}">上一页</a>
         </li>
      </c:if>

      <c:choose>
         <c:when test="${pb.tp<5}">
            <c:forEach begin="1" end="${pb.tp}" var="i">
               <c:choose>
                  <c:when test="${i==pb.pc}">
                     <li class="paginate_button active"><a href="${pageContext.request.contextPath}/HousePageServlet?pc=${i}">${i}</a></li>

                  </c:when>
                  <c:otherwise>
                     <li><a href="${pageContext.request.contextPath}/HousePageServlet?pc=${i}">${i}</a></li>
                  </c:otherwise>
               </c:choose>
            </c:forEach>
         </c:when>
         <c:when test="${pb.pc<=2}">
            <c:forEach begin="1" end="${pb.pc }" var="i">
               <c:choose>
                  <c:when test="${i==pb.pc}">
                     <li class="paginate_button active"><a href="${pageContext.request.contextPath}/HousePageServlet?pc=${i}">${i}</a></li>

                  </c:when>
                  <c:otherwise>
                     <li><a href="${pageContext.request.contextPath}/HousePageServlet?pc=${i}">${i}</a></li>
                  </c:otherwise>
               </c:choose>
            </c:forEach>
         </c:when>
         <c:when test="${pb.pc>=pb.tp-2}">
            <c:forEach begin="${pb.tp-4}" end="${pb.tp}" var="i">
               <c:choose>
                  <c:when test="${i==pb.pc}">
                     <li class="paginate_button active"><a href="${pageContext.request.contextPath}/HousePageServlet?pc=${i}">${i}</a></li>

                  </c:when>
                  <c:otherwise>
                     <li><a href="${pageContext.request.contextPath}/HousePageServlet?pc=${i}">${i}</a></li>
                  </c:otherwise>
               </c:choose>
            </c:forEach>
         </c:when>
         <c:otherwise>
           <c:forEach begin="${pb.pc-2}" end="${pb.pc+2}" var="i">
                     <c:choose>
                        <c:when test="${i==pb.pc}">
                           <li class="paginate_button active"><a href="${pageContext.request.contextPath}/HousePageServlet?pc=${i}">${i}</a></li>

                        </c:when>
                        <c:otherwise>
                           <li><a href="${pageContext.request.contextPath}/HousePageServlet?pc=${i}">${i}</a></li>
                        </c:otherwise>
                     </c:choose>
                  </c:forEach>
               </c:otherwise>
            </c:choose>
            <c:if test="${pb.pc<pb.tp}">
               <li class="paginate_button previous disabled }" >
                  <a href="${pageContext.request.contextPath}/HousePageServlet?pc=${pb.pc+1}">下一页</a>
               </li>
            </c:if>
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