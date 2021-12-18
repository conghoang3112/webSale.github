<%-- 
    Document   : newjsp
    Created on : Mar 8, 2021, 11:53:14 PM
    Author     : CongHoangDevelop
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="Css/header.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    </head>
    <script>
        // Page loadinmg animation

        if ((".loader").length) {
            // show Preloader until the website ist loaded
            $(window).on('load', function () {
                $(".loader").fadeOut("slow");
            });
        }

        /* Onpage linkng smooth effect */

        $('a[href^="#"]').on('click', function (event) {

            var target = $($(this).attr('href'));

            if (target.length) {
                event.preventDefault();
                $('html, body').animate({
                    scrollTop: target.offset().top
                }, 1000);
            }

        });

// Sticky Header
        $(window).scroll(function () {
            var scroll = $(window).scrollTop();

            if (scroll >= 100) {
                $(".top-nav").addClass("light-header");
            } else {
                $(".top-nav").removeClass("light-header");
            }
        });

// Year for copy content
        $(function () {
            var theYear = new Date().getFullYear();
            $('#year').html(theYear);
        });


    </script>
    <body>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->

        <nav class="navbar navbar-expand-md fixed-top top-nav" style="background-color: black">
            <div class="container-fluid">
                <a class="navbar-brand" href="index.html"><strong>Hi ${sessionScope.acc.userName} !</strong></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"><img src="https://grafreez.com/wp-content/temp_demos/razor/img/icons/menu.png"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent" >
                    <ul class="navbar-nav m-auto text-sm-center text-md-center">
                        <c:if test="${sessionScope.acc.isAdmin==1}">
                            <li class="nav-item">
                                <a class="nav-link" href="admin">ADMIN</a>
                            </li>
                        </c:if>
                        <li class="nav-item">
                            <a class="nav-link" href="home">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="ProductByType?type=shirt">Cuban Shirt</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="ProductByType?type=shoe">Shoes</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="ProductByType?type=jean">Skinny Jeans</a>
                        </li>
                        <c:if test="${sessionScope.acc != null}">
                            <li class="nav-item">
                                <a class="nav-link" href="logout">Logout</a>
                            </li>
                        </c:if>
                        <c:if test="${sessionScope.acc == null}">
                            <li class="nav-item">
                                <a class="nav-link" href="login">Login</a>
                            </li>
                        </c:if>
                    </ul>
                </div>
                <ul class="navbar-nav ml-auto search-box">
                    <li class="nav-item" style=" ">
                        <a class="nav-link" style=" float: right"href="loadAcc?accid=${UserID}"><i class="fa fa-user-o text-white"></i></a>
                        <a class="nav-link" style=" float: right"href="cart.jsp"><i class="fa fa-shopping-cart text-white"></i></a>
                        <a class="nav-link" style=" float: right" href="search.jsp"><i class="fa fa-search text-white"></i></a>
                    </li>
                </ul>
            </div>
        </nav>
        <section id="home" style="background-image: url(Picture/img_0.png); background-repeat: no-repeat;
                 background-size: cover;
                 height: 2500px; width: 100%;" >
        </section>

    </body>
</html>
