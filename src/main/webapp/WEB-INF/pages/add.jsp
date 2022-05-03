<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 2022/4/18
  Time: 21:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<center>
<form method="post" action="/ks/add">
    <table>
    <tr><td>添加页面</td></tr>
    <tr>
        <td>用户名</td>
        <td><input type="text" name="uname"></td>
    </tr>
    <tr>
        <td>工资</td>
        <td><input type="text" name="usal"></td>
    </tr>
    <tr>
        <td>入职日期</td>
        <td><input type="date" name="date"></td>
    </tr>
    <tr>
        <td>地址</td>
        <td><select name="pname">
<c:forEach var="i" items="${string}">
            <option>${i}</option>
</c:forEach>
        </select></td>
    </tr>
    <tr>
        <td><input type="submit" value="提交"></td>
    </tr>
    </table>
</form>
</center>
</body>
</html>
