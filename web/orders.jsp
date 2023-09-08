<%-- 
    Document   : orders
    Created on : 8 Sep, 2023, 7:39:14 PM
    Author     : shanu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ALL Orders</title>
        <%@include file="Component/allCss.jsp" %>
    </head>
    <body>
        <%@include file="Component/navbar.jsp" %>

        <div class="container">
            <div class="">
                <div class="p-4">
                    <div class="card mt-2">
                        <div class="p-2">
                            <h4 class="text-center">Your Orders</h4>
                            <table class="table table-striped mt-3">
                                <thead class="bg-secondary text-white">
                                    <tr>
                                        <th scope="col">Order Id</th>
                                        <th scope="col">Image</th>
                                        <th scope="col">Name</th>
                                        <th scope="col">Product Name</th>
                                        <th scope="col">Owner</th>
                                        <th scope="col">Price</th>
                                        <th scope="col">Payment Type</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td><img alt="" src="" width="50px" height="50px"/></td>
                                        <td>Mark</td>
                                        <td>Otto</td>
                                        <td>@mdo</td>
                                        <td>@mdo</td>
                                        <td>@mdo</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">2</th>
                                        <td><img alt="" src="" width="50px" height="50px"/></td>
                                        <td>Jacob</td>
                                        <td>Thornton</td>
                                        <td>@fat</td>
                                        <td>@fat</td>
                                        <td>@fat</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">3</th>
                                        <td><img alt="" src="" width="50px" height="50px"/></td>
                                        <td>Larry</td>
                                        <td>the Bird</td>
                                        <td>the Bird</td>
                                        <td>the Bird</td>
                                        <td>@twitter</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
