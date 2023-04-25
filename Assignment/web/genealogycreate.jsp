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
               target="_blank">Let's start</a>
        </div>

        <form action="creategenealogy" method="post" id="myForm" style="display:none;" >
            <h2 style="text-align: center;  color: crimson"><b>Genealogy</b></h2>
            <div class="form-outline mb-4">
                <input type="text" name="genealogytitle" class="form-control" />
                <label class="form-label" for="form6Example3">Genealogy title</label>
            </div>           


            <h2 style="text-align: center;  color: crimson"><b>Header Infomation</b></h2>
            <div class="d-flex align-items-center mb-4">
                <h5 class="mr-3 mb-0">Avatar: &nbsp; </h5>
                <div class="custom-file">
                    <input type="file" class="custom-file-input" id="avatarInput" name="avatar" accept="image/*">

                </div>
            </div>
            <!-- 2 column grid layout with text inputs for the first and last names -->
            <div class="form-outline mb-4">
                <input type="text" id="form6Example0" name="fullname" class="form-control" />
                <label class="form-label" for="form6Example3">Fullname</label>
            </div>
            <div class="row mb-4">
                <div class="col">
                    <div class="form-outline">
                        <input type="date" id="form6Example1" name="dateofbirth" class="form-control" />
                        <label class="form-label" for="form6Example1">Date of birth</label>
                    </div>
                </div>
                <div class="col">
                    <div class="form-outline">
                        <input type="date" id="form6Example2" name="dateofdeath" class="form-control" />
                        <label class="form-label" for="form6Example2">Date of death</label>
                    </div>
                </div>
            </div>

            <!-- Text input -->
            <div class="form-outline mb-4">
                <input type="text" id="form6Example3" name="occupation" class="form-control" />
                <label class="form-label" for="form6Example3">Occupation</label>
            </div>

            <!-- Text input -->
            <div class="form-outline mb-4">
                <input type="text" id="form6Example4" name="address" class="form-control" />
                <label class="form-label" for="form6Example4">Address</label>
            </div>


            <!-- Number input -->
            <div class="form-outline mb-4">
                <input type="number" id="form6Example6" name="phonenumber" class="form-control" />
                <label class="form-label" for="form6Example6">Phone number</label>
            </div>

            <!-- Message input -->
            <div class="form-outline mb-4">
                <input type="text" class="form-control" name="discription" ></input>
                <label class="form-label" for="form6Example7">Description</label>
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
