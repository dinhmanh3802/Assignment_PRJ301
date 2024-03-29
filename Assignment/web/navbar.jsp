<%-- 
    Document   : narbar.jsp
    Created on : Apr 22, 2023, 8:44:12 AM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <title>Navbar</title>
    </head>
    <body>
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-light bg-white fixed-top">
            <!-- Container wrapper -->
            <div class="container-fluid">
                <!-- Toggle button -->
                <button
                    class="navbar-toggler"
                    type="button"
                    data-mdb-toggle="collapse"
                    data-mdb-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
                    >
                    <i class="fas fa-bars"></i>
                </button>

                <!-- Collapsible wrapper -->
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Navbar brand -->
                    <a class="navbar-brand mt-2 mt-lg-0" href="homepage.jsp">
                        <img
                            src="https://www.dau.edu/training/career-development/logistics/PublishingImages/DAU%20Images/DAU_DAU%20Logo_20170104.jpg"
                            height="50"
                            alt="MDB Logo"
                            loading="lazy"
                            />
                    </a>
                    <% 

                // Lấy giá trị của thuộc tính "username" từ đối tượng session
                if(session.getAttribute("username")!=null){
                %>
                    <!-- Left links -->
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link" href="genealogycreate.jsp">GENEALOGY-CREATE</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="searching.jsp">SEARCHING</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">PROJECTS</a>
                        </li>
                    </ul>
                    <!-- Left links -->
                </div>
                <!-- Collapsible wrapper -->





                

                <!-- Ðã dang nhap -->
                <div class="d-flex align-items-center">
                    <!-- Icon -->


                    <!-- Notifications -->
                    <div class="dropdown">
                        <a
                            class="link-secondary me-3 dropdown-toggle hidden-arrow"
                            href="#"
                            id="navbarDropdownMenuLink"
                            role="button"
                            data-mdb-toggle="dropdown"
                            aria-expanded="false"
                            >
                            <i class="fas fa-bell fa-2x"style="font-size: 250%" ></i>
                            <span class="badge rounded-pill badge-notification bg-danger">1</span>
                        </a>
                        <ul
                            class="dropdown-menu dropdown-menu-end"
                            aria-labelledby="navbarDropdownMenuLink"
                            >
                            <li>
                                <a class="dropdown-item" href="#">Some news</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="#">Another news</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </li>
                        </ul>
                    </div>
                    <!-- Avatar -->
                    <div class="dropdown">
                        <button
                            class="dropdown-toggle d-flex align-items-center hidden-arrow"
                            type="button"
                            id="navbarDropdownMenuAvatar"
                            data-mdb-toggle="dropdown"
                            aria-expanded="false"
                            >
                            <img
                                src="https://www.pngfind.com/pngs/m/34-349693_circled-user-icon-transparent-background-username-icon-hd.png"
                                class="rounded-circle"
                                height="50"
                                alt="Black and White Portrait of a Man"
                                loading="lazy"
                                />
                        </button>
                        <ul
                            class="dropdown-menu dropdown-menu-end"
                            aria-labelledby="navbarDropdownMenuAvatar"
                            >
                            <li>
                                <a class="dropdown-item" href="userprofile.jsp">My profile</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="changepassword.jsp">Change password</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="logout">Logout</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <%}else{%>
                <!-- Left links -->
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        
                    </ul>
                    <!-- Left links -->
                </div>
                <!-- Collapsible wrapper -->
                <!-- Chua dang nhap -->
                <div class="d-flex align-items-center">
                    <a
                        class="h4 link-secondary me-3 hidden-arrow"
                        href="login.jsp "
                        role="button" 
                        >
                        Sign in
                    </a>

                    <a
                        class="h4 link-secondary me-3 hidden-arrow"
                        href="signup.jsp "
                        role="button"
                        >
                        Sign up
                    </a>
                    <!-- Notifications -->
                    <div>


                    </div>
                    <!-- Avatar -->
                    <div>


                    </div>
                </div>
                <%}%>
                <!-- Right elements -->
            </div>
            <!-- Container wrapper -->
        </nav>
        <!-- Navbar -->
        <script
            type="text/javascript"
            src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.js"
        ></script>
    </body>
</html>
