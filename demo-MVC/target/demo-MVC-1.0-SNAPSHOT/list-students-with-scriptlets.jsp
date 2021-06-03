<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 6/1/2021
  Time: 11:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.*,demo.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Tracker App</title>
    <link type="text/css" rel="stylesheet" href="css/style.css">
</head>
<%
    // get the students from the request object (sent by servlet)
    List<Student> theStudents =
            (List<Student>) request.getAttribute("STUDENT_LIST");
%>
<body>
<div id="wrapper">
    <div id="header">
        <h2>CodeLean Academy</h2>
    </div>
</div>
<div id="container">
    <div id="content">
        <table>
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
            </tr>
            <% for (Student tempStudent : theStudents) { %>
            <tr>
                <td> <%= tempStudent.getFirstName() %> </td>
                <td> <%= tempStudent.getLastName() %> </td>
                <td> <%= tempStudent.getEmail() %> </td>
            </tr>
            <% } %>
        </table>
    </div>
</div>
</body>
</html>
