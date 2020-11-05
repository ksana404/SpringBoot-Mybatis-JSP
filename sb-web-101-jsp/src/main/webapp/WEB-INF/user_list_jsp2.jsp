<%@ page pageEncoding="utf-8"%>
<%-- 引入JSTL标签库 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
<title>用户管理</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<style type="text/css">
	body{ font-family: "微软雅黑"; background-color: #EDEDED; }
	h2{ text-align: center;}
	table{ width:96%; margin: 0 auto; text-align: center; border-collapse:collapse; font-size:16px;}
	td, th{ padding: 5px;}
	th{ background-color: #DCDCDC; width:120px; }
	th.width-40{ width: 40px; }
	th.width-70{ width: 70px; }
	th.width-80{ width: 80px; }
	hr{ margin-bottom:20px; border:1px solid #aaa; }
	#add-door{text-align:center;font-size:20px;}
</style>
</head>
<body><!-- body-start  -->

<h2>人员</h2>
<div id="add-user">
	<a href="user_add" target="rightFrame">增加</a>
</div>
<hr/>
<table border="1">
	<tr>
		<th class="width-40">序号</th>
		<th>ID</th>
		<th>名字</th>
		<th>年龄</th>
		<th>性别</th>
		<th class="width-40">来呀</th>
		<th class="width-40">操作</th>

	</tr>

	<!-- 模版数据 -->
	<!-- c:for each  var=user对象  varStatus="status" -->
	<!-- tr 一行    td 行内列   计数 序号   ${  status.count } 显示属性 ${  user.id }    -->
	<c:forEach items="${  list }" var="user" varStatus="status">
	<tr>
		<td>${  status.count }</td>  <!-- status.count 用于计数 -->
		<td>${  user.id }</td>  	<!-- user 对象属性 -->
		<td>${  user.name }</td> 
		<td>${  user.age }</td> 
		<td>${  user.sex }</td> 
		<td>你喜欢干嘛都行</td>
		<td>
			<a href="doorDelete?id=${ user.id }">删除</a>
			&nbsp;|&nbsp;
			<a href="doorInfo?id=${ user.id }">修改</a>
		</td>
	</tr>
	
	</c:forEach>

<!-- 你需要写一点 JSP 标签的小 demo -->
	
</table>
</body><!-- body-end  -->
</html>



