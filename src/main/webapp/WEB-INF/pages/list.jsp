<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 2022/4/18
  Time: 20:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>展示</title>
</head>
<body>
<center>
<table border="1" href="">
    <tr><a href="/ks/toadd">添加</a></tr>
<tr>
    <th>编号</th>
    <th>姓名</th>
    <th>金额</th>
    <th>日期</th>
    <th>地址</th>
    <th>操作</th>
</tr>
<c:forEach var="i" items="${page.list}" varStatus="s">
    <tr>
    <td>${s.count}</td>
    <td>${i.uname}</td>
    <td>${i.usal}</td>
    <td><input type="date" name="date" value="<fmt:formatDate value="${i.uhiredate}" pattern="yyyy-MM-dd" />"></td>
    <td>${i.pname}</td>
        <td><a href="${pageContext.request.contextPath}/ks/toupdate?uid=${i.uid}">修改</a>&nbsp;
            <a href="${pageContext.request.contextPath}/ks/delete?uid=${i.uid}" onclick="return d()">删除</a></td>
    </tr>
</c:forEach>
    </table>
    <a href='${pageContext.request.contextPath}/ks/list?page=1' >首页</a>
    <c:if test="${page.pageNum > 1 }">
        <a href='${pageContext.request.contextPath}/ks/list?page=${page.pageNum-1}'>上一页</a>
    </c:if>

    <c:if test="${page.pageNum <= 1 }">
        <a href='${pageContext.request.contextPath}/ks/list?page=1'>上一页</a>
    </c:if>
    <c:forEach var="d" begin="1" end="${page.pages}">
        <a href="/ks/list?page=${d}">${d}</a>
    </c:forEach>
    <c:if test="${page.pageNum < page.pages}">
        <a href='${pageContext.request.contextPath}/ks/list?page=${page.pageNum+1}'>下一页</a>
    </c:if>

    <c:if test="${page.pageNum >= page.pages}">
        <a href='${pageContext.request.contextPath}/ks/list?page=${page.pages}'>下一页</a>
    </c:if>

    <a href='${pageContext.request.contextPath}/ks/list?page=${page.pages}'>尾页</a>

    &nbsp;&nbsp;&nbsp;共<span class='current'> ${page.total} </span>条记录
    <span class='current'> ${page.pageNum}/${page.pages}</span>页
    </center>
    </body>
<script type="text/javascript">
    function d(){
        var a="确定删除?"
        if (confirm(a)){
            return true;
        }else {
            return false;
        }
    }
</script>
    </html>
