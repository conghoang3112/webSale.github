<%-- 
    Document   : Shirt
    Created on : Mar 11, 2021, 9:52:58 AM
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
        <link href="Css/Footer.css" rel="stylesheet" type="text/css"/>
        <link href="Css/body.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:include page="Header.jsp"/>
        <h2 style="text-align: center;margin-top: 50px;margin-bottom: 50px;">SHOES NEW VIRAL</h2>
        <div class="container">
            <div class="row">
                <c:forEach items="${list}" var="o">
                    <div class="col-md-4 col-sm-6" style="margin-bottom: 50px;">
                        <div class="product-grid">
                            <div class="product-image">
                                <a href="#">
                                    <img class="pic-1" src="${o.productImg}">
                                    <img class="pic-2" src="${o.productImg1}">
                                </a>
                                <ul class="social">
                                    <li><a href="" data-tip="Quick View"><i class="fa fa-search"></i></a></li>
                                    <li><a href="" data-tip="Add to Wishlist"><i class="fa fa-shopping-bag"></i></a></li>
                                    <li><a href="" data-tip="Add to Cart"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product-content">
                                <h3 class="title"><a href="detail?pid=${o.productID}" title="View Product">${o.productName}</a></h3>
                                <div class="price">${o.price}
                                </div>
                                <a class="add-to-cart" href="addCart?pid=${o.productID}">+ Add To Cart</a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    <jsp:include page="Footer.jsp"/>
</body>
</html>
