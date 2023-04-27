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
        <style>
            table {
                border-collapse: collapse;
                width: 100%;
                border: 1px solid black;
                text-align: center 
            }

            th, td {
                border: 2px solid black;
                padding: 10px;
                text-align: center;

                color: black;
            }

            tr:hover {
                background-color:#f5f5f5;
            }

            th {
                background-color: #4CAF50;
                color: white;
                text-align: center 
            }

            .create-button {
                background-color: #4CAF50;
                border: none;
                color: white;
                padding: 16px 32px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 25px;
                margin: 4px 2px;
                cursor: pointer;
                border-radius: 4px;
            }

            .delete-button {
                background-color: #f44336;
                border: none;
                color: white;
                padding: 8px 16px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin: 4px 2px;
                cursor: pointer;
                border-radius: 4px;
            }

            .update-button {
                background-color: #008CBA;
                border: none;
                color: white;
                padding: 8px 16px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin: 4px 2px;
                cursor: pointer;
                border-radius: 4px;
            }
             body {
                font-family: Arial, sans-serif;
                font-size: 16px;

                background-image: url('https://free.vector6.com/wp-content/uploads/2020/07/Hoa-tiet-nen-dep-Vector.jpg');
                background-size: cover;
                background-position: center center;
                opacity: 1; /* độ mờ của hình nền, giá trị từ 0 đến 1 */

            }

        </style>
        <script type="text/javascript">
            function doDeleteAsk(id1,id2) {
                if (confirm("Are you sure to delete it ?")) {
                    window.location = "deletepeson?id=" + id1 +"&genealogyid="+id2;
                }
            }
        </script>
        
    </head>
    <body>
        <jsp:include page="navbar.jsp" />
        <table style="margin-top: 100px; ">
            <thead>
                <tr>
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

                    <td><%= s.getFullname()%></td>
                    <td><%= s.getDateOfBirth()%></td>
                    <td><%= s.getDateOfDeath()%></td>
                    <td><%= s.getOccupation()%></td>
                    <td><%= s.getAddress()%></td>
                    <td><%= s.getPhoneNumber()%></td>
                    <td><%= s.getDescription()%></td>
                    <td><a class="update-button" href="update.jsp?id=<%= s.getID()%>">Update</a> &nbsp; <a class="delete-button" onclick="doDeleteAsk(<%= s.getID()%>, <%= s.getGenealogyID()%>)">Delete</a>
                        ></td>
                </tr>             
                <%}}%>
            </tbody>
        </table>
        <a class="create-button" href="add.jsp?genealogy=<%= request.getParameter("id")%>"><strong>Create</strong></a> 
        <jsp:include page="footer.jsp" />
    </body>
</html>
