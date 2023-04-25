<%-- 
    Document   : info
    Created on : Apr 25, 2023, 2:01:42 PM
    Author     : asus
--%>

<%@page import="java.util.List"%>
<%@page import="model.Book"%>
<%@page import="model.Author"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Info</title>

    </head>
    <body>
        <form>
            <table border="1">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Title</th>  
                        <th>Published Date</th>
                        <th>Authors</th>                   
                    </tr>
                </thead>
                <tbody>
                    <% 
                        List<Book> li = (List<Book>)request.getAttribute("list");
                        if(li!=null){
                        for(Book s :li){ 
                    %>
                    <tr>
                        <td><%= s.getBid()%></td>
                        <td><input type="text" name="btitle" value="<%= s.getBtitle()%>"></td>
                        <td><input type="date" name="publisherdate" value="<%= s.getPublisherdate()%>"></td>
                        <td>
                            <input type="checkbox" <%= s.getGender() ? "checked" : "" %> disabled />
                            <input type="checkbox" <%= s.getGender() ? "checked" : "" %> disabled />
                            <input type="checkbox" <%= s.getGender() ? "checked" : "" %> disabled />
                            <input type="checkbox" <%= s.getGender() ? "checked" : "" %> disabled />
                        </td>

                    </tr>             
                    <%}}%>
                </tbody>
            </table>
            <input type="submit" value="SAVE" />
        </form>




    </body>
</html>
