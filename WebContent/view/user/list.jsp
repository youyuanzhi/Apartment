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
	<h3>用户管理<a href="${pageContext.request.contextPath}/css/main.css"></a></h3>
	<form action="${pageContext.request.contextPath }/userSel" method="post">
	<input type = "text" name = "name" placeholder="输入用户姓名" />
	<input type = "text" name = "role_id" placeholder="输入用户role_id" />
	<input clas="btn btn-primary" type="submit" />
	</form>
	
	<div class="actions">
		<div>
			<a class="btn btn-primary" href="${pageContext.request.contextPath}/view/user/add.jsp">添加用户</a>
		</div>
	</div>
	<table class="list">
		<tr>
			<th>序号</th>
			<th>用户账号</th>
			<th>用户密码</th>
			<th>用户姓名</th>
			<th>用户性别</th>
			<th>用户role_id</th>
			<th>创建时间</th>
			<th>用户装态</th>
		</tr>
		<c:forEach  items="${pb.beanList}"  var="user">
		<tr>
			<td>${user.u_id}</td>
			<td>${user.name}</td>
			<td>${user.pass}</td>
			<td>${user.realname}</td>
			<td>${user.u_sex}</td>
			<td>${user.role_id}</td>
			<td>${user.u_create_ctime }</td>
			<td>${user.u_state}</td>
			<td>
				<a class="fa fa-info" title="详情" href="detail.html"></a>
				&nbsp;&nbsp;
				<a class="fa fa-pencil" title="编辑" href="${pageContext.request.contextPath}/user/findbyid?u_id=${user.u_id}"></a>
				&nbsp;&nbsp;
				<a class="fa fa-remove" title="删除" href="${pageContext.request.contextPath}/user/delete?u_id=${user.u_id}" onclick="confirmDelete(1)"></a>
			</td>
		</tr>
		</c:forEach>
	</table>
	<div class="pager-info">
		<div>共有${pb.tr } 条记录，第 ${pb.pc}/${pb.tp } 页 </div>
		<div>
   <ul class="pagination">
      <c:if test="${pb.pc>1}">
         <li class="paginate_button previous disabled }" >
            <a href="${pageContext.request.contextPath}/userSel?pc=${pb.pc-1}&name = ${pb.user.name}&role_id = ${pb.user.role_id}">上一页</a>
         </li>
      </c:if>

      <c:choose>
         <c:when test="${pb.tp<5}">
            <c:forEach begin="1" end="${pb.tp}" var="i">
               <c:choose>
                  <c:when test="${i==pb.pc}">
                     <li class="paginate_button active"><a href="${pageContext.request.contextPath}/userSel?pc=${i}">${i}</a></li>

                  </c:when>
                  <c:otherwise>
                     <li><a href="${pageContext.request.contextPath}/userSel?pc=${i}">${i}</a></li>
                  </c:otherwise>
               </c:choose>
            </c:forEach>
         </c:when>
         <c:when test="${pb.pc<=2}">
            <c:forEach begin="1" end="${pb.pc }" var="i">
               <c:choose>
                  <c:when test="${i==pb.pc}">
                     <li class="paginate_button active"><a href="${pageContext.request.contextPath}/userSel?pc=${i}">${i}</a></li>

                  </c:when>
                  <c:otherwise>
                     <li><a href="${pageContext.request.contextPath}/userSel?pc=${i}">${i}</a></li>
                  </c:otherwise>
               </c:choose>
            </c:forEach>
         </c:when>
         <c:when test="${pb.pc>=pb.tp-2}">
            <c:forEach begin="${pb.tp-4}" end="${pb.tp}" var="i">
               <c:choose>
                  <c:when test="${i==pb.pc}">
                     <li class="paginate_button active"><a href="${pageContext.request.contextPath}/userSel?pc=${i}">${i}</a></li>

                  </c:when>
                  <c:otherwise>
                     <li><a href="${pageContext.request.contextPath}/userSel?pc=${i}">${i}</a></li>
                  </c:otherwise>
               </c:choose>
            </c:forEach>
         </c:when>
         <c:otherwise>
           <c:forEach begin="${pb.pc-2}" end="${pb.pc+2}" var="i">
                     <c:choose>
                        <c:when test="${i==pb.pc}">
                           <li class="paginate_button active"><a href="${pageContext.request.contextPath}/userSel?pc=${i}">${i}</a></li>

                        </c:when>
                        <c:otherwise>
                           <li><a href="${pageContext.request.contextPath}/userSel?pc=${i}">${i}</a></li>
                        </c:otherwise>
                     </c:choose>
                  </c:forEach>
               </c:otherwise>
            </c:choose>
            <c:if test="${pb.pc<pb.tp}">
               <li class="paginate_button previous disabled }" >
                  <a href="${pageContext.request.contextPath}/userSel?pc=${pb.pc+1}">下一页</a>
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
