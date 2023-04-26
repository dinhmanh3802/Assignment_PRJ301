<%-- 
    Document   : genealogymember
    Created on : Apr 26, 2023, 11:24:57 AM
    Author     : asus
--%>
<%@page import ="dal.PersonDAO"%>
<%@page import="java.util.List"%>
<%@page import="model.Person"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Genealogy</title>
        <script type="text/javascript">
            function doDeleteAsk(id1, id2) {
                if (confirm("Are you sure to delete " + id1 + " ?")) {
                    window.location = "deletepeson?id=" + id1 + "&genealogyid=" +id2;
                }
            }
        </script>
    </head>
    <body>
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Fullname</th>
                    <th>Date of birth</th>
                    <th>Date of death</th>       
                    <th>Occupation</th>     
                    <th>Addresss</th>     
                    <th>Phone number</th>     
                    <th>Discription</th>     
                    <th></th>     
                </tr>
            </thead>
            <tbody>
                <% 
                    List<Person> li = (List<Person>)request.getAttribute("list");
                    if(li!=null){
                    for(Person s :li){ 
                %>
                <tr>
                    <td><%= s.getID()%></td>
                    <td><%= s.getFullname()%></td>
                    <td><%= s.getDateOfBirth()%></td>
                    <td><%= s.getDateOfDeath()%></td>
                    <td><%= s.getOccupation()%></td>
                    <td><%= s.getAddress()%></td>
                    <td><%= s.getPhoneNumber()%></td>
                    <td><%= s.getDescription()%></td>
                    <td><a href="update.jsp?id=<%= s.getID()%>">Update</a> &nbsp; <a href = "#" onclick="doDeleteAsk(<%= s.getID()%>, <%= s.getGenealogyID()%>)">Delete</a></td>
                </tr>             
                <%}}%>
            </tbody>
        </table>
            <a href="add.jsp?genealogy=<%= request.getParameter("id")%>"><strong>Create</strong></a> 



    </body>
</html>
