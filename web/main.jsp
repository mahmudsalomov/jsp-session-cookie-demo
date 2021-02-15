<%--
  Created by IntelliJ IDEA.
  User: kali
  Date: 12/02/2021
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<style>
    table {
        font-family: arial, sans-serif;
        border-collapse: collapse;
        width: 100%;
    }

    td, th {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;
    }

    tr:nth-child(even) {
        background-color: #dddddd;
    }
</style>
<body style="background-color: lightgrey">

<section class="h-100" >
    <div class="card h-100 container-fluid">

        <div class="card-header text-center">
            <h3>
                Cookie lar
            </h3>

        </div>

        <div class="card-body" >

            <table class="table">
                <tr class="">
                    <td>
                        Yangi Cookie qo'shish:
                    </td>

                    <form action="/" method="post">
                        <td>
                            <input required="required" pattern="[^' ']+" class="form-control" id="name" name="name"  type="text" placeholder="Name">
                        </td>
                        <td>
                            <input required="required"  pattern="[^' ']+" class="form-control" id="value" name="value"  type="text" placeholder="Value">
                        </td>
                        <td class="text-center">
                            <button type="submit" class="btn btn-success" style="">Yangi qo'shish</button>
                        </td>
                    </form>

                </tr>

                <tr class="">
                    <th>Name</th>
                    <th>Value</th>
                    <th>Tools</th>
                </tr>

                <%
                Cookie[] cookies =request.getCookies();
                StringBuilder all= new StringBuilder();
                    for (Cookie cookie : cookies) {
                        if (!cookie.getName().equals("JSESSIONID"))
                            all.append("<tr>\n" + "                    \n" + "                    \n" + "                        <td>\n" + "\n" + "                            <input value=\"").append(cookie.getName()).append("\" placeholder=\"ism\" name=\"name\"  class=\"form-control\">\n").append("\n").append("                        </td>\n").append("\n").append("                        <td>\n").append("\n").append("                            <input value=\"").append(cookie.getValue()).append("\" placeholder=\"value\" name=\"value\"  class=\"form-control\">\n").append("\n").append("                        </td>\n").append("\n").append("                        <td class=\"text-center\">\n").append("                            <a href='http://localhost:8080/?delete=").append(cookie.getName()).append("' type=\"submit\" class=\"btn btn-danger\">O'chirish</a>\n").append("                        </td>\n").append("                    \n").append("\n").append("                </tr>");
                    }

                %>

                <%=all.toString()%>

            </table>
        </div>
    </div>
</section>
</body>
</html>
