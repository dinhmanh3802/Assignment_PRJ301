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
        <title>Add Person</title>
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


            form {
                background-color: white; /* Nền trắng */
                margin: 100px 20%; /* Căn giữa theo chiều dọc và cách lề 20% */
                padding: 20px; /* Thêm khoảng cách giữa form và các phần tử bên trong */
            }

            /* Đảm bảo form không bị navbar che */
            nav {
                z-index: 1;
            }
        </style>
    </head>
    <body>
        <jsp:include page="navbar.jsp" />

        <form>

            <div class="d-flex align-items-center mb-4">
                <h5 class="mr-3 mb-0">Avatar: &nbsp; </h5>
                <div class="custom-file">
                    <input type="file" class="custom-file-input" id="avatarInput" name="avatar" accept="image/*">
                    
                </div>
            </div>
            <!-- 2 column grid layout with text inputs for the first and last names -->
            <div class="form-outline mb-4">
                <input type="text" id="form6Example0" class="form-control" />
                <label class="form-label" for="form6Example3">Fullname</label>
            </div>
            <div class="row mb-4">
                <div class="col">
                    <div class="form-outline">
                        <input type="date" id="form6Example1" class="form-control" />
                        <label class="form-label" for="form6Example1">Date of birth</label>
                    </div>
                </div>
                <div class="col">
                    <div class="form-outline">
                        <input type="date" id="form6Example2" class="form-control" />
                        <label class="form-label" for="form6Example2">Date of death</label>
                    </div>
                </div>
            </div>

            <!-- Text input -->
            <div class="form-outline mb-4">
                <input type="text" id="form6Example3" class="form-control" />
                <label class="form-label" for="form6Example3">Occupation</label>
            </div>

            <!-- Text input -->
            <div class="form-outline mb-4">
                <input type="text" id="form6Example4" class="form-control" />
                <label class="form-label" for="form6Example4">Address</label>
            </div>


            <!-- Number input -->
            <div class="form-outline mb-4">
                <input type="number" id="form6Example6" class="form-control" />
                <label class="form-label" for="form6Example6">Phone number</label>
            </div>

            <!-- Message input -->
            <div class="form-outline mb-4">
                <textarea class="form-control" id="form6Example7" rows="4"></textarea>
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
