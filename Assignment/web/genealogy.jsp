<%-- 
    Document   : Genealogy
    Created on : Apr 24, 2023, 4:57:51 PM
    Author     : asus
--%>
<%@page import ="dal.PersonDAO"%>
<%@page import ="dal.PersonManagement"%>
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
    <style>
        ul {
            list-style-type: none;
            padding: 0;
        }
        li {
            margin-left: 20px;
        }
    </style>
    <body>

        <h1>Tree View</h1>
        <ul>
            <%
            PersonDAO pD = new PersonDAO();    
            PersonManagement pm = new PersonManagement();
            List<Person> persons = pm.sortPersons(pD.getAll());
            for (Person person : persons) {
                if (person.getParentID() == 0) {
                    out.print("<li>" + person.getFullname() + "</li>");
                    List<Person> children = new ArrayList<>();
                    pm.findChildren(persons, person, children);
                    if (!children.isEmpty()) {
                        out.print("<ul>");
                        for (Person child : children) {
                            out.print("<li>" + child.getFullname() + "</li>");
                        }
                        out.print("</ul>");
                    }
                }
            }
            %>
        </ul>
        <h1>hehe</h1>
    </body>
</html>
