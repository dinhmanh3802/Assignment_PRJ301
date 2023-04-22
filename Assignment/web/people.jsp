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
                .container{
                    margin-top: 100px;
                }
            }
            .peoplefrontimg {
                width: 100%; /* hoặc kích thước mong muốn */
                height: 400px; /* giữ tỷ lệ chiều rộng/chiều cao */
            }
            

            .card-body{
                height: 300px;
            }

        </style>
    </head>
    <body>
        <jsp:include page="navbar.jsp" />

        <div class="container" d-flex>
            <div class="main-body ">



                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-xl-4 gutters-sm ">
                    <div class="col mb-3">
                        <div class="card">
                            <img class="peoplefrontimg" src="https://i.pinimg.com/originals/f1/c2/ca/f1c2ca25e0be09c079124d6850decd1a.png" alt="Cover" class="card-img-top">
                            <div class="card-body text-center">
                                <img src="https://i.pinimg.com/736x/ed/fc/7a/edfc7ac5fccde495064da5ccd4cfae61.jpg" style="width:100px;margin-top:-65px" alt="User" class="img-fluid img-thumbnail rounded-circle border-0 mb-3">
                                <h5 class="card-title">Đậu Y Phòng</h5>
                                <p class="text-secondary mb-1">Hiếu Văn Đậu Hoàng hậu</p>
                                <p class="text-muted font-size-sm">Quan Tân, Thanh Hà </p>
                            </div>
                            <div class="card-footer">
                                <div class="text-center">
                                    <a href="https://vi.wikipedia.org/wiki/%C4%90%E1%BA%ADu_ho%C3%A0ng_h%E1%BA%ADu_(H%C3%A1n_V%C4%83n_%C4%90%E1%BA%BF)" class="btn btn-primary">MORE...</a>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="col mb-3">
                        <div class="card">
                            <img class="peoplefrontimg" src="https://bcp.cdnchinhphu.vn/Uploaded/buianhtho/2016_08_11/613e7608b058a00e1222f2fb924bb63b%20-%20Copy.jpg" alt="Cover" class="card-img-top">
                            <div class="card-body text-center">
                                <img src="https://upload.wikimedia.org/wikipedia/vi/thumb/a/a2/Dau_Ngoc_Xuan.jpg/330px-Dau_Ngoc_Xuan.jpg" style="width:100px;margin-top:-65px" alt="User" class="img-fluid img-thumbnail rounded-circle border-0 mb-3">
                                <h5 class="card-title">Đậu Ngọc Xuân</h5>
                                <p class="text-secondary mb-1">Huân chương Độc lập hạng Nhất</p>
                                <p class="text-muted font-size-sm">Xuân Hải,Nghi Xuân, Hà Tĩnh</p>
                            </div>
                            <div class="card-footer">
                                <div class="text-center">
                                    <a href="https://vi.wikipedia.org/wiki/%C4%90%E1%BA%ADu_ho%C3%A0ng_h%E1%BA%ADu_(H%C3%A1n_V%C4%83n_%C4%90%E1%BA%BF)" class="btn btn-primary">MORE...</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-3">
                        <div class="card">
                            <img class="peoplefrontimg" src="https://static.bongda24h.vn/medias/original/2022/3/28/clb-ha-noi-gia-han-voi-tien-ve-dau-van-toan-hinh-anh.jpg" alt="Cover" class="card-img-top">
                            <div class="card-body text-center">
                                <img src="https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSn1PoG9Z5uw5-32sODj6C9ULIROihKuaYX9W2sCyjdp2KKoXQt" style="width:100px;margin-top:-65px" alt="User" class="img-fluid img-thumbnail rounded-circle border-0 mb-3">
                                <h5 class="card-title">Đậu Văn Toàn</h5>
                                <p class="text-secondary mb-1">Tiền vệ đội tuyển Quốc gia</p>
                                <p class="text-muted font-size-sm">Hà Nội, ‎Việt Nam</p>
                            </div>
                            <div class="card-footer">
                                <div class="text-center">
                                    <a href="https://vi.wikipedia.org/wiki/%C4%90%E1%BA%ADu_V%C4%83n_To%C3%A0n" class="btn btn-primary">MORE...</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-3">
                        <div class="card">
                            <img class="peoplefrontimg" src="https://file.qdnd.vn/data/images/0/2020/04/12/dieuthuy/t2.jpg?dpi=150&quality=100&w=575" alt="Cover" class="card-img-top">
                            <div class="card-body text-center">
                                <img src="https://baoquangbinh.vn/dataimages/202104/original/images697074_03042021vthuy55_1dt.jpg" style="width:100px;margin-top:-65px" alt="User" class="img-fluid img-thumbnail rounded-circle border-0 mb-3">
                                <h5 class="card-title">Đậu Đình Đoàn</h5>
                                <p class="text-secondary mb-1">Cục trưởng Cục Xăng dầu Quân đội nhân dân Việt Nam.</p>
                                <p class="text-muted font-size-sm">Cẩm Xuyên, Hà Tĩnh, Việt Nam</p>
                            </div>
                            <div class="card-footer">
                                <div class="text-center">
                                    <a href="https://vi.wikipedia.org/wiki/%C4%90%E1%BA%ADu_%C4%90%C3%ACnh_%C4%90o%C3%A0n" class="btn btn-primary">MORE...</a>
                                </div>    
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <jsp:include page="footer.jsp" />
        <script
            type="text/javascript"
            src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.js"
        ></script>
    </body>
</html>
