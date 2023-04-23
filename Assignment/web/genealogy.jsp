<%-- 
    Document   : homepage
    Created on : Apr 22, 2023, 11:18:02 AM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Genealogy</title>
        <!-- Font Awesome -->
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
            rel="stylesheet"
            />
        <!-- Google Fonts -->
        <link
            href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
            rel="stylesheet"
            />
        <!-- MDB -->
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.css"
            rel="stylesheet"
            />
        <style>

            body{
                background-image: url('https://free.vector6.com/wp-content/uploads/2020/07/Hoa-tiet-nen-dep-Vector.jpg');
                background-size: cover;
                background-position: center center;
                opacity: 1; /* độ mờ của hình nền, giá trị từ 0 đến 1 */

            }

        </style>
    </head>
    <body>
        <jsp:include page="navbar.jsp" />


        <ul class="tree" style="margin-top: 100px" >
            <li>
                <a href="profile.jsp" "><b>Tên nguoi dok</b></a> <a href="profile.jsp" ">Update</a> <a href="update.jsp" ">Delete</a> <a href="add.jsp" ">+</a>
                <ul>
                    <li>
                        <span>Tên nút 2.1</span>
                        <ul>
                            <li>
                                <span>Tên nút 3.1</span>
                                <ul>
                                    <li>
                                        <span>Tên nút 4</span>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <span>Tên nút 2.2</span>
                        <ul>
                            <li>
                                <span>Tên nút 3.1</span>
                            </li>
                        </ul>
                    </li>
                </ul>
            </li>
            
        </ul>



        <jsp:include page="footer.jsp" />
        <script
            type="text/javascript"
            src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.js"
        ></script>
    </body>
</html>
