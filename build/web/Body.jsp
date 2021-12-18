<%-- 
    Document   : newjsp111111
    Created on : Mar 9, 2021, 11:58:06 AM
    Author     : CongHoangDevelop
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Css/body.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <title>JSP Page</title>
    </head>
    <body>
        <h2 style="text-align: center;margin-top: 50px;margin-bottom: 50px;">NEW VIRAL</h2>
        <div class="container">
            <div id="content" class="row">
                <c:forEach items="${listProduct}" var="o">
                    <div class="product col-md-4 col-sm-6" style="margin-bottom: 50px;">
                        <div class="product-grid">
                            <div class="product-image">
                                <a href="#">
                                    <img class="pic-1" src="${o.productImg}">
                                    <img class="pic-2" src="${o.productImg1}">
                                </a>
                                <ul class="social">
                                    <li><a href="detail?pid=${o.productID}" data-tip="Quick View"><i class="fa fa-search"></i></a></li>
                                    
                                </ul>
                            </div>
                            <div class="product-content">
                                <h3 class="title"><a href="detail?pid=${o.productID}" title="View Product">${o.productName}</a></h3>
                                <div class="price">${o.price} VND
                                </div>
                                <a class="add-to-cart" href="addCart?pid=${o.productID}">+ Add To Cart</a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
            <button style="margin-bottom: 20px;" onclick="loadMore()"> Load more</button>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
            <script>
                function loadMore() {
                    var a = document.getElementsByClassName("product").length;
                    $.ajax({
                        url: "/Project/load",
                        type: "get", //send it through get method
                        data: {
                            exits: a
                        },
                        success: function (data) {
                            var row = document.getElementById("content");
                            row.innerHTML += data;
                        },
                        error: function (xhr) {
                            //Do Something to handle error
                        }
                    });
                }
                
            </script>
        </div>
    </body>
</html>
