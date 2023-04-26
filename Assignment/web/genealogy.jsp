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
    </head>
    <body>
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Title</th>                              
                </tr>
            </thead>
            <tbody>
                <% 
                    List<Genealogy> li = (List<Genealogy>)request.getAttribute("list");
                    if(li!=null){
                    for(Genealogy s :li){ 
                %>
                <tr>
                    <td><%= s.getID()%></td>
                    <td><%= s.getGenealogyTitle()%></td>
                    
                  
                    <td><a href="updategenealogy?id=<%= s.getID()%>">Update</a> &nbsp; <a href = "#" onclick="doDeleteAsk(<%= s.getID()%>)">Delete</a></td>
                </tr>             
                <%}}%>
            </tbody>
        </table>
        <a href="create.jsp"><strong>Create</strong></a> 



    </body>
</html>