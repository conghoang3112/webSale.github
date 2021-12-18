<%-- 
    Document   : cart
    Created on : Mar 18, 2021, 8:00:15 AM
    Author     : CongHoangDevelop
--%>

<%@page import="java.util.List"%>
<%@page import="entity.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="Css/footer.css" rel="stylesheet" type="text/css"/>
    </head>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->



    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-10 col-md-offset-1">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Product</th>
                            <th>Quantity</th>
                            <th class="text-center">Price</th>
                            <th class="text-center">Total</th>
                            <th> </th>
                        </tr>
                    </thead>
                    <tbody>


                        <%
                            List<Product> list = (List<Product>) session.getAttribute("list");
                            
                            if (list != null && !list.isEmpty()) {

                                if (request.getAttribute("order-success") != null) {
                        %>
                    <h1 style="color: green;"><%=request.getAttribute("order-success")%></h1>
                    <%}
                        long total = 0;
                        for (int i = 0; i < list.size(); i++) {
                            total += list.get(i).price * list.get(i).quantity;
                    %>
                    <tr>
                        <td class="col-sm-8 col-md-6">
                            <div class="media">
                                <a class="thumbnail pull-left" href="#"> <img class="media-object" style="width: 100px; height: 150px;" src="<%=list.get(i).getProductImg()%>"> </a>
                                <div class="media-body">

                                    <h4 class="media-heading"><%=list.get(i).getProductName()%></h4>

                                </div>
                            </div></td>
                        <td class="col-sm-1 col-md-1" style="text-align: center">
                            
                            <strong><%=list.get(i).getQuantity()%></strong>
                            
                            
                        </td>
                        <td class="col-sm-1 col-md-1 text-center"><strong><%=list.get(i).getPrice()%></strong></td>
                        <td class="col-sm-1 col-md-1 text-center"><strong><%=list.get(i).getPrice() * list.get(i).getQuantity()%></strong></td>
                        <td class="col-sm-1 col-md-1">
                            <button type="button" class="btn btn-danger">
                                <a href="removeCart?pid=<%=list.get(i).getProductID()%>"><span class="glyphicon glyphicon-remove"></span> Remove</a>
                            </button></td>
                    </tr>
                    <% }%>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h3>Total</h3></td>
                        <td class="text-right"><h3><strong>$<%=total%></strong></h3></td>
                    </tr>
                    <% }%>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>
                            <button class="btn btn-default">
                                <a href="home"> Continue Shopping</a>
                            </button></td>

                        <%
                            if (list != null && !list.isEmpty()) {%>
                        <td>
                            <button type="button" class="btn btn-default">
                                <a href="order">Checkout <span class="glyphicon glyphicon-play"></span></a>
                            </button>
                        </td>
                        <% }%>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</html>
