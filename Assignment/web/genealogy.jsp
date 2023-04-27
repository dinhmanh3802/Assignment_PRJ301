<%-- 
    Document   : Genealogy
    Created on : Apr 24, 2023, 4:57:51 PM
    Author     : asus
--%>
<%@page import ="dal.PersonDAO"%>
<%@page import ="model.Genealogy"%>
<%@page import="model.Person"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Info</title>
        <script type="text/javascript">
            function doDeleteAsk(id) {
                if (confirm("Are you sure to delete it ?")) {
                    window.location = "deletegenealogy?id=" + id;
                }
            }
        </script>
        <style>
    body{
        background-image: url('https://free.vector6.com/wp-content/uploads/2020/07/Hoa-tiet-nen-dep-Vector.jpg');
        background-size: cover;
        background-position: center center;
        opacity: 1; /* độ mờ của hình nền, giá trị từ 0 đến 1 */  
    }
    
    table {
        border-collapse: collapse;
        width: 100%;
        border: 1px solid black;
    }

    th, td {
        padding: 8px;
        text-align: left;
        border-bottom: 1px solid #ddd;
        border: 1px solid black;
    }

    th {
        background-color: #4CAF50;
        color: black;
        border: 1px solid black;
    }

    .genealogy-table {
        border-collapse: collapse;
        width: 100%;
    }

    .genealogy-table th, .genealogy-table td {
        padding: 10px;
        text-align: center;
        background-color: white;
        color: #333;
        border: 1px solid #ccc;
    }

    .genealogy-table th {
        background-color: #f2f2f2;
    }

    .genealogy-table tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    .btn-update, .btn-delete {
        display: inline-block;
        padding: 6px 12px;
        margin: 5px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    .btn-update:hover, .btn-delete:hover {
        background-color: #3e8e41;
    }
</style>

    </head>
    <body>
         <jsp:include page="navbar.jsp" />
         
         <table class="genealogy-table" style="margin-top: 100px">
            <thead>
                <tr>
                  
                    <th>Title</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <% 
                  List<Genealogy> li = (List<Genealogy>) request.getAttribute("list");
                  if (li != null) {
                    for (Genealogy s : li) { 
                %>
                <tr>
                   
                    <td><%= s.getGenealogyTitle() %></td>
                    <td>
                        <a href="updategenealogy?id=<%= s.getID() %>" class="btn-update">View</a>
                        
                    </td>
                </tr>             
                <% } } %>
            </tbody>
        </table>

            <jsp:include page="footer.jsp" />
        <script
            type="text/javascript"
            src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.js"
        ></script>  

    </body>
</html>