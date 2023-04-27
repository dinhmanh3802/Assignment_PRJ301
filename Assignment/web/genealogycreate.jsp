<%-- 
    Document   : homepage
    Created on : Apr 22, 2023, 11:18:02 AM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script>
            function openForm() {
                document.getElementById("myForm").style.display = "block";
            }
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Genealogy Create</title>
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
            form {
                background-color: white; /* Nền trắng */
                margin: 0px 20%; /* Căn giữa theo chiều dọc và cách lề 20% */
                padding: 20px; /* Thêm khoảng cách giữa form và các phần tử bên trong */
            }

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

        <div id="intro" class="p-5 text-center" style="margin-top: 100px">
            <h2 class="mb-3 h1"><b>First, please enter the information of the head of the genealogy!</b></h2>

            <a class="btn btn-primary m-2" onclick="openForm()" role="button" rel="nofollow"
               target="_blank">Create new Genealogy</a>
            <a class="btn btn-primary m-2" href="genealogyinfo" role="button" rel="nofollow"
               target="_blank">Genealogy list</a>
        </div>

        <form action="creategenealogy" method="post" id="myForm" style="display:none;" >
            <h2 style="text-align: center;  color: crimson"><b>Create a new Genealogy</b></h2>
            <div class="form-outline mb-4">
                <input type="text" name="genealogytitle" class="form-control" />
                <label class="form-label" for="form6Example3">Genealogy title</label>
            </div>           

            <!-- Submit button -->
            <button type="submit" class="btn btn-primary btn-block mb-4">Save</button>
        </form>

        <jsp:include page="footer.jsp" />
        <script
            type="text/javascript"
            src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.js"
        ></script>
    </body>
</html>
