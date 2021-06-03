<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<sql:query var="rs" dataSource="jdbc/TestDB">
    select id, foo, bar from testdata
</sql:query>

<html>
<head>
    <title>DB Test</title>
</head>
<body>

<h2>Results</h2>
<c:forEach var="row" items="${rs.rows}">
    Foo ${row.foo}<br/>
    Bar ${row.bar}<br/>
</c:forEach>

<a href="StudentControllerServlet">Student CRUD</a>
<a href="jdbctest">Connection Pool with Servlet</a>
</body>
</html>