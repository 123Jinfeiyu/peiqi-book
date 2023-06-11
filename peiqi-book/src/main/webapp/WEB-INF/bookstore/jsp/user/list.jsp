<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>用户</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	body {
		font-size: 10pt;
		background: rgb(254,238,189);
	}
    table {
        width: 100%;
        max-width: 800px;
        margin: 0 auto;
        border-collapse: collapse;
        border-radius: 10px;
        overflow: hidden;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    th, td {
        padding: 12px;
        text-align: center;
    }

    thead {
        background-color: #3f51b5;
        color: #fff;
    }

    tbody tr:nth-child(even) {
        background-color: #f5f5f5;
    }

    tbody tr:hover {
        background-color: #e0e0e0;
    }

    tr {
        transition: all 0.2s ease-in-out;
    }
    a {
        text-decoration: none; /*去掉下划线*/
        color: #333; /*设置文字颜色*/
        font-weight: bold; /*设置文字加粗*/
    }

    a:hover {
        color: #f00; /*设置鼠标悬停时的文字颜色*/
        text-decoration: underline; /*添加下划线*/
    }

    /* 设置表单元素之间的间距 */
    form {
        padding: 20px;
    }

    /* 设置文本输入框的样式 */
    input[type="text"], select {
        padding: 10px;
        border: none;
        border-radius: 5px;
        box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
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
    span{
        color:red;
        font-weight: bold;
        font-size: medium;
    }
</style>
  </head>

  <body>

  <div style="padding: 0 25% 0 30%">
      <form method="get" action="/user">
          用户名：<input type="text" name="username"/>
          &nbsp;|&nbsp;
          性别：
                <input type="radio" name="gender" value="男" />男
                <input type="radio" name="gender" value="女" checked/>女
          &nbsp;&nbsp;&nbsp;<input type="submit" value="查询" />
      </form>
      <span>根据"用户名"和"性别"进行多条件查询为选做功能，此功能有额外加分：10分</span>
  </div>
  <hr />
  <table>
      <thead>
      <tr>
          <th>用户名</th>
          <th>密码</th>
          <th>年龄</th>
          <th>性别</th>
          <th>email</th>
          <th>操作</th>
      </tr>
      </thead>
      <tbody>
<%--      <tr>--%>
<%--          <td>jack</td>--%>
<%--          <td>123456</td>--%>
<%--          <td>20</td>--%>
<%--          <td>男</td>--%>
<%--          <td>abc@163.com</td>--%>
<%--          <th>--%>
<%--              <a href="/user/modify">修改</a>--%>
<%--              |--%>
<%--              <a href="#" onclick="return confirm('确定删除吗？')">删除</a>--%>
<%--          </th>--%>
<%--      </tr>--%>
<%--      <tr>--%>
<%--          <td>tom</td>--%>
<%--          <td>123456</td>--%>
<%--          <td>20</td>--%>
<%--          <td>男</td>--%>
<%--          <td>abc@163.com</td>--%>
<%--          <th>--%>
<%--              <a href="${pageContext.request.contextPath}/jsp/user/modify.jsp">修改</a>--%>
<%--              |--%>
<%--              <a href="#" onclick="return confirm('确定删除吗？')">删除</a>--%>
<%--          </th>--%>
<%--      </tr>--%>
<%--      <tr>--%>
<%--          <td>jerry</td>--%>
<%--          <td>123456</td>--%>
<%--          <td>20</td>--%>
<%--          <td>男</td>--%>
<%--          <td>abc@163.com</td>--%>
<%--          <th>--%>
<%--              <a href="${pageContext.request.contextPath}/jsp/user/modify.jsp">修改</a>--%>
<%--              |--%>
<%--              <a href="#" onclick="return confirm('确定删除吗？')">删除</a>--%>
<%--          </th>--%>
<%--      </tr>--%>
      <c:forEach items="${users}" var="user">
          <tr>
              <td>${user.username}</td>
              <td>${user.password}</td>
              <td>${user.age}</td>
              <td>${user.gender}</td>
              <td>${user.email}</td>
              <th>
                  <a href="/user/modify?id=${user.id}">修改</a>
                  |
                  <a href="/user/del?id=${user.id}" onclick="return confirm('确定删除吗？')">删除</a>
              </th>
          </tr>
      </c:forEach>

      </tbody>
  </table>
  </body>

</html>

