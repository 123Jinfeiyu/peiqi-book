<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>添加用户</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	body {
		background: rgb(254,238,189);
		text-align: center;
	}
	/* 设置按钮的样式 */
	input[type="submit"] {
		padding: 10px 20px;
		background-color: #007bff;
		color: #fff;
		border: none;
		border-radius: 5px;
		cursor: pointer;
	}

	/* 当鼠标悬停在按钮上时，改变按钮的背景颜色 */
	input[type="submit"]:hover {
		background-color: #0069d9;
	}
</style>
  </head>

  <body>
    <h1>添加用户</h1>
    <form action="/user/addUser" method="post">
		<table align="center">
			<tr>
				<td>用户名：</td>
				<td><input type="text" name="username"/> </td>
			</tr>
			<tr>
				<td>密码：</td>
				<td><input type="text" name="password"/> </td>
			</tr>
			<tr>
				<td>年龄：</td>
				<td><input type="text" name="age"/> </td>
			</tr>
			<tr>
				<td>性别：</td>
				<td><input type="text" name="gender"/> </td>
			</tr>
			<tr>
				<td>email：</td>
				<td><input type="text" name="email"/> </td>
			</tr>

		</table>
    	<input type="submit" value="添加用户"/>
    </form>
  </body>
</html>
