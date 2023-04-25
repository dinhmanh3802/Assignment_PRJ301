<%-- 
    Document   : Genealogy
    Created on : Apr 24, 2023, 4:57:51 PM
    Author     : asus
--%>


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
        <title>Genealogy</title>
    </head>
    <body>

        <%
        // Khởi tạo danh sách người trong gia phả
        List<Person> genealogy = (List<Person>)request.getAttribute("list");
        int headerID = (int)request.getAttribute("headerid");
        // Phương thức đệ quy in ra danh sách người trong gia phả
    
        // Gọi phương thức in ra gia phả, bắt đầu từ người có id = 1
        printGenealogy(headerID, genealogy);
            %>
        <h1>hehe</h1>
    </body>
</html>
