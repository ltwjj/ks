<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 2022/4/18
  Time: 22:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>修改界面</title>
</head>
<body>
<center>
    <form method="post" action="/ks/update">
        <table>
            <tr><td>修改页面</td></tr>
            <tr>
                <td>用户名</td>
                <td><input type="text" name="uname" value="${finduid.uname}"></td>
            </tr>
            <tr>
                <td>工资</td>
                <td><input type="text" name="usal" value="${finduid.usal}"></td>
            </tr>
            <tr>
                <td>入职日期</td>
                <td><input type="date" name="date" value="<fmt:formatDate value="${finduid.uhiredate}" pattern="yyyy-MM-dd" />"></td>
            </tr>
            <tr>
                <td>地址</td>
                <td><select name="pname">
                    <option>${finduid.pname}</option>
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
