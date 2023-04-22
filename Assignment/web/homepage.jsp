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
        <title>Home Page</title>
        <style>

            #intro {
                /* Margin to fix overlapping fixed navbar */
                margin-top: 0px;
            }
            @media (max-width: 991px) {
                #intro {
                    /* Margin to fix overlapping fixed navbar */
                    margin-top: 45px;
                }
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

        <div id="homepage">  <!-- Jumbotron -->
            <div id="intro" class="p-5 text-center">
                <h1 class="mb-3 h1"><b>Welcome to dautoc.com - Genealogy Management Website for Đậu Family!</b></h1>
                <p class="mb-3">Best & free guide of responsive web design</p>
                <a class="btn btn-primary m-2" href="https://www.youtube.com" role="button" rel="nofollow"
                   target="_blank">Website user manual</a>
                <a class="btn btn-primary m-2" href="#" target="_blank"
                   role="button">see your privileges</a>
            </div>
            <hr>
            <!-- Jumbotron -->
            <!--Main Navigation-->

            <!--Main layout-->
            <main class="my-5">
                <div class="container">
                    <!--Section: Content-->
                    <section class="text-center">
                        <h4 class="mb-5"><strong>Latest posts</strong></h4>

                        <div class="row">
                            <div class="col-lg-4 col-md-12 mb-4">
                                <div class="card">
                                    <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                                        <img src="https://mdbootstrap.com/img/new/standard/nature/184.jpg" class="img-fluid" />
                                        <a href="#!">
                                            <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                        </a>
                                    </div>
                                    <div class="card-body">
                                        <h5 class="card-title">Post title</h5>
                                        <p class="card-text">
                                            Some quick example text to build on the card title and make up the bulk of the
                                            card's content.
                                        </p>
                                        <a href="#!" class="btn btn-primary">Read</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 col-md-6 mb-4">
                                <div class="card">
                                    <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                                        <img src="https://mdbootstrap.com/img/new/standard/nature/023.jpg" class="img-fluid" />
                                        <a href="#!">
                                            <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                        </a>
                                    </div>
                                    <div class="card-body">
                                        <h5 class="card-title">Post title</h5>
                                        <p class="card-text">
                                            Some quick example text to build on the card title and make up the bulk of the
                                            card's content.
                                        </p>
                                        <a href="#!" class="btn btn-primary">Read</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 col-md-6 mb-4">
                                <div class="card">
                                    <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                                        <img src="https://mdbootstrap.com/img/new/standard/nature/111.jpg" class="img-fluid" />
                                        <a href="#!">
                                            <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                        </a>
                                    </div>
                                    <div class="card-body">
                                        <h5 class="card-title">Post title</h5>
                                        <p class="card-text">
                                            Some quick example text to build on the card title and make up the bulk of the
                                            card's content.
                                        </p>
                                        <a href="#!" class="btn btn-primary">Read</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-4 col-md-12 mb-4">
                                <div class="card">
                                    <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                                        <img src="https://mdbootstrap.com/img/new/standard/nature/002.jpg" class="img-fluid" />
                                        <a href="#!">
                                            <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                        </a>
                                    </div>
                                    <div class="card-body">
                                        <h5 class="card-title">Post title</h5>
                                        <p class="card-text">
                                            Some quick example text to build on the card title and make up the bulk of the
                                            card's content.
                                        </p>
                                        <a href="#!" class="btn btn-primary">Read</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 col-md-6 mb-4">
                                <div class="card">
                                    <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                                        <img src="https://mdbootstrap.com/img/new/standard/nature/022.jpg" class="img-fluid" />
                                        <a href="#!">
                                            <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                        </a>
                                    </div>
                                    <div class="card-body">
                                        <h5 class="card-title">Post title</h5>
                                        <p class="card-text">
                                            Some quick example text to build on the card title and make up the bulk of the
                                            card's content.
                                        </p>
                                        <a href="#!" class="btn btn-primary">Read</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 col-md-6 mb-4">
                                <div class="card">
                                    <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                                        <img src="https://mdbootstrap.com/img/new/standard/nature/035.jpg" class="img-fluid" />
                                        <a href="#!">
                                            <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                        </a>
                                    </div>
                                    <div class="card-body">
                                        <h5 class="card-title">Post title</h5>
                                        <p class="card-text">
                                            Some quick example text to build on the card title and make up the bulk of the
                                            card's content.
                                        </p>
                                        <a href="#!" class="btn btn-primary">Read</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <!--Section: Content-->


                </div>
            </main>
            <!--Main layout--></div>

        <jsp:include page="footer.jsp" />
    </body>
</html>
