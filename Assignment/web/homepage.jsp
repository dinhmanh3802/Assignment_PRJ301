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

            #intro {
                /* Margin to fix overlapping fixed navbar */
                margin-top: 100px;
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
                <p class="mb-3 h3">Let's start!!!</p>
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
                        <h1 class="mb-5"><strong>-  C A T E G O R I E S  -</strong></h1>

                        <div class="row">
                            <div class="col-lg-4 col-md-12 mb-4">
                                <div class="card">
                                    <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                                        <img src="https://scontent.fhan4-2.fna.fbcdn.net/v/t39.30808-6/307197434_464383145732890_2306617591807377098_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=j_G9r4k6qAsAX_QMXp1&_nc_oc=AQkMH_hpnhGLrBHPs2USEthXJsFBvpEXjGInnsvlONCSFXlfgLpALkOtZbDL93RcS0A&_nc_ht=scontent.fhan4-2.fna&oh=00_AfD6ld4ycO_-GP6YmYa3g__ZfB9JFjnLRuV2b4qVS74vxw&oe=6447F103" class="img-fluid" />
                                        <a href="https://vi.wikipedia.org/wiki/%C4%90%E1%BA%ADu_(h%E1%BB%8D_ng%C6%B0%E1%BB%9Di)#Ngu%E1%BB%93n_g%E1%BB%91c">
                                            <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                        </a>
                                    </div>
                                    <div class="card-body">
                                        <h5 class="card-title">About Đậu Family...</h5>
                                        <p class="card-text">
                                            About the Dau family in Vietnam. Brief introduction - An overview of our family line.
                                        </p>
                                        <a href="https://vi.wikipedia.org/wiki/%C4%90%E1%BA%ADu_(h%E1%BB%8D_ng%C6%B0%E1%BB%9Di)#Ngu%E1%BB%93n_g%E1%BB%91c" class="btn btn-primary">Read</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 col-md-6 mb-4">
                                <div class="card">
                                    <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                                        <img src="https://scontent.fhan3-5.fna.fbcdn.net/v/t39.30808-6/322479726_513275924118563_1165610655230729796_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=n3v5Kjdt9zQAX-zlMh-&_nc_ht=scontent.fhan3-5.fna&oh=00_AfCbKAJQcWs3cCfjofotyZWowWatu0XsoI-N_k30LJnwRg&oe=64482835" class="img-fluid" />
                                        <a href="history.jsp">
                                            <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                        </a>
                                    </div>
                                    <div class="card-body">
                                        <h5 class="card-title">History of the Đậu family</h5>
                                        <p class="card-text">
                                            History of formation and development of culture and traditions of the Đậu family throughout history.
                                        </p>
                                        <a href="history.jsp" class="btn btn-primary">Read</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 col-md-6 mb-4">
                                <div class="card">
                                    <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                                        <img src="trangnguyen.png" class="img-fluid" />
                                        <a href="people.jsp">
                                            <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                        </a>
                                    </div>
                                    <div class="card-body">
                                        <h5 class="card-title">Distinguished member of the Đậu family</h5>
                                        <p class="card-text">
                                            Prominent members of the Đậu family are recorded in history.
                                        </p>
                                        <a href="people.jsp" class="btn btn-primary">Read</a>
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
        <script
            type="text/javascript"
            src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.js"
        ></script>
    </body>
</html>
