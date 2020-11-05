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
		<th class="width-40">操作</th>

	</tr>
	<!-- jsp 使用的是 jstl标签, JSP 标准标签库（JSTL）https://www.runoob.com/jsp/jsp-jstl.html-->
	<!--  
	JSTL支持通用的、结构化的任务，比如迭代，条件判断，XML文档操作，国际化标签，SQL标签。 除了这些，它还提供了一个框架来使用集成JSTL的自定义标签。

根据JSTL标签所提供的功能，可以将其分为5个类别。

核心标签
格式化标签
SQL 标签
XML 标签
JSTL 函数
	 -->
	<!--  -->
	<!--  -->
	<!--  -->
	<!-- c:for each  var=user对象    通过 ${ 目标对象key } 获取对象,    varStatus="status" -->
	<!-- tr 一行    td 行内列   计数 序号   ${  status.count } 显示属性 ${  user.id }    -->
	
	
	<!-- 模版数据 -->
<c:forEach items="${ list }"  var="user" varStatus="status">
	<tr>
		<td>${ status.count }</td>
		<td>${ user.id }</td>
		<td>${ user.name }</td>
		<td>${ user.age }</td>
		<td>${ user.sex }</td>
		<td>
			<a href="doorDelete?id=${ user.id }">删除</a>
			&nbsp;|&nbsp;
			<a href="doorInfo?id=${ user.id }">修改</a>
		</td>
	</tr>
</c:forEach>


	
</table>
</body><!-- body-end  -->
</html>



