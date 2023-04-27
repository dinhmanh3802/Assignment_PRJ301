<%-- 
    Document   : searching
    Created on : Apr 26, 2023, 2:22:55 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Searching</title>

        <style>
            body {
                font-family: Arial, sans-serif;
                font-size: 16px;

                background-image: url('https://free.vector6.com/wp-content/uploads/2020/07/Hoa-tiet-nen-dep-Vector.jpg');
                background-size: cover;
                background-position: center center;
                opacity: 1; /* độ mờ của hình nền, giá trị từ 0 đến 1 */

            }

            form {

                margin: 0 auto;
                width: 80%;
                text-align: center;
                margin-top: 100px
            }

            label {
                display: inline-block;
                width: 150;
                font-size: xx-large
            }

            select, input[type="text"], input[type="submit"] {
                font-size: 32px;
                padding: 10px;
                border-radius: 10px;
            }

            select {
                width: 300px;
            }

            input[type="text"] {
                width: 600px;
            }

            input[type="submit"] {
                background-color: #008CBA;
                color: #FFF;
                border: none;
                cursor: pointer;
            }

            input[type="submit"]:hover {
                background-color: #005E7A;
            }


        </style>

    </head>
    <body>
        <jsp:include page="navbar.jsp" />
        <form action="searching" method="post">
            <label>Searching by:</label>
            <select name="option">
                <option value="Fullname">Fullname</option>
                <option value="Occupation">Occupation</option>
                <option value="Phonenumber">Phone Number</option>
                <option value="Address">Address</option>
                <option value="Discription">Discription</option>
            </select>
            <br>
            <label>Value:</label>
            <input type="text" name="value">
            <input type="submit" value="SEARCH">
        </form>
        <jsp:include page="footer.jsp" />
    </body>
</html>
