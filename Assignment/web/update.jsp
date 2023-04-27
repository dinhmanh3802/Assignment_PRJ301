<%-- 
    Document   : homepage
    Created on : Apr 22, 2023, 11:18:02 AM
    Author     : asus
--%>
<%@page import ="model.Person"%>
<%@page import ="dal.PersonDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
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
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <style>


            body{
                background-image: url('https://free.vector6.com/wp-content/uploads/2020/07/Hoa-tiet-nen-dep-Vector.jpg');
                background-size: cover;
                background-position: center center;
                opacity: 1; /* độ mờ của hình nền, giá trị từ 0 đến 1 */

            }
            

            #profile-image1 {
                cursor: pointer;

                width: 200px;
                height: 200px;
                border:2px solid #03b1ce ;
            }
            .tital{
                font-size:16px;
                font-weight:500;
            }
            .bot-border{
                border-bottom:1px #f8f8f8 solid;
                margin:5px 0  5px 0
            }
            .container{
                margin-top: 100px;
            }

        </style>
    </head>
    <body>
        <jsp:include page="navbar.jsp" />

        <%
            PersonDAO pd = new PersonDAO();
            Person p = pd.findPerson(Integer.parseInt(request.getParameter("id")));
        %>
        
        <div class="container" style="width: 60%;">
            <div class="row" >

                <form action="updateperson" method="post">

                    <div class="panel panel-default">
                        <div class="panel-heading" style="text-align: center">  <h1 style="font-size: 50px"><b>Personal Information</b></h1></div>
                        <div class="panel-body">

                            <div class="box box-info">

                                <div class="box-body">

                                    <div  align="center"> <img alt="User Pic" src="https://ichef.bbci.co.uk/news/999/cpsprodpb/15951/production/_117310488_16.jpg" id="profile-image1" class="img-circle img-responsive"> 
                                            
                                    </div>

                                    <br>



                                    <div class="clearfix"></div>
                                    <hr style="margin:5px 0 5px 0;">


                                    <h3>Fullname:</h3><div class="form-outline mb-4">
                                        <input type="text" name="fullname" value="<%= p.getFullname() %>" id="form6Example0" class="form-control" />
                                        
                                    </div>
                                    <div class="row mb-4">
                                        <div class="col">
                                            <h3>Date of birth:</h3><div class="form-outline">
                                                <input type="date" name="dob" value="<%= p.getDateOfBirth()%>" id="form6Example1" class="form-control" />
                                                
                                            </div>
                                        </div>
                                        <div class="col">
                                            <h3>Date of death:</h3><div class="form-outline">
                                                <input type="date"  name="dod" value="<%= p.getDateOfDeath()%>" id="form6Example2" class="form-control" />
                                                
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Text input -->
                                    <h3>Occupation:</h3><div class="form-outline mb-4">
                                        <input type="text" name="occupation" value="<%= p.getOccupation()%>" id="form6Example3" class="form-control" />
                                        
                                    </div>

                                    <!-- Text input -->
                                    <h3>Address:</h3><div class="form-outline mb-4">
                                        <input type="text" name="address" value="<%= p.getAddress()%>" id="form6Example4" class="form-control" />
                                       
                                    </div>


                                    <!-- Number input -->
                                    <h3>Phone number:</h3><div class="form-outline mb-4">
                                        <input type="number" name="phonenumber" value="<%= p.getPhoneNumber()%>" id="form6Example6" class="form-control" />
                                    
                                    </div>

                                    <!-- Message input -->
                                    <h3>Description:</h3><div class="form-outline mb-4">
                                        <input type="text" name="description" value="<%= p.getDescription()%>" class="form-control" />
                                        
                                    </div>
                                    
                                        <input hidden type="text" name="genealogyID" value="<%= p.getGenealogyID()%>" class="form-control" />
                                        <input hidden type="text" name="personID" value="<%= p.getID()%>" class="form-control" />
                                    
                                    </div>


                                    <!-- /.box-body -->
                                </div>
                                <!-- /.box -->
                                <input type="submit" value="SAVE" />
                            </div>


                        </div> 
                    </div>
                    
                </form>  
                <script>
                    $(function () {
                        $('#profile-image1').on('click', function () {
                            $('#profile-image-upload').click();
                        });
                    });
                </script> 









            </div>
        </div>

        <jsp:include page="footer.jsp" />

        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <script
            type="text/javascript"
            src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.js"
        ></script>
    </body>
</html>
