<%-- 
    Document   : cart
    Created on : 8 Sep, 2023, 2:46:01 PM
    Author     : shanu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart</title>
        <%@include file="Component/allCss.jsp" %>
    </head>
    <body style="background-color: #f0f1f2">
        <%@include file="Component/navbar.jsp" %>

        <div class="container">
            <div class="row p-2">
                <div class="col-md-6">
                    <div class="card bg-white mt-5">
                    <h3 class="text-center text-success">Your Product</h3>
                        <div class="card-body">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">First</th>
                                        <th scope="col">Last</th>
                                        <th scope="col">Handle</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>Mark</td>
                                        <td>Otto</td>
                                        <td>@mdo</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">2</th>
                                        <td>Jacob</td>
                                        <td>Thornton</td>
                                        <td>@fat</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">3</th>
                                        <td>Larry</td>
                                        <td>the Bird</td>
                                        <td>@twitter</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-6">
                    <div class="card bg-white mt-5">
                    <h3 class="text-center text-success">Your details</h3>
                        <div class="card-body">
                            <form>
                                
                                <!--name and email--> 
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="inputEmail4">Name</label>
                                        <input type="text" class="form-control" id="inputEmail4" value="">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="inputPassword4">Email</label>
                                        <input type="email" class="form-control" id="inputPassword4">
                                    </div>
                                </div>
                                
                                
                                <!--mobile and address--> 
                                
                                
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="inputEmail4">Mobile No.</label>
                                        <input type="number" class="form-control" id="inputEmail4">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="inputPassword4">Address</label>
                                        <input type="text" class="form-control" id="inputPassword4" >
                                    </div>
                                </div>
                                
                                <!--landmark and city-->
                                
                                
                                
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="inputEmail4">LandMark</label>
                                        <input type="text" class="form-control" id="inputEmail4">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="inputPassword4">City</label>
                                        <input type="text" class="form-control" id="inputPassword4">
                                    </div>
                                </div>
                                
                                <!--state and pin code-->
                                 
                                
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="inputEmail4">State</label>
                                        <input type="text" class="form-control" id="inputEmail4">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="inputPassword4">Pin code</label>
                                        <input type="text" class="form-control" id="inputPassword4">
                                    </div>
                                </div>
                                
                                
                                <!--payment type--> 
                                
                                
                                <div class="form-group">
                                    <label>Payment Mode</label>
                                    <select class="form-control">
                                        <option>Select options</option>
                                        <option>Cash on delivery</option>
                                        <option>Kidney</option>
                                        <option>Byte-Coin</option>
                                        <option>Joke</option>
                                    </select>
                                </div>
                                
                                <!--order now and continue shopping-->
                                
                                <div class="text-center">
                                    
                                <button type="submit" class="btn btn-primary">Order Now</button>
                                <a href="/Ent_Java_ECom/" class="btn btn-secondary">Continue Shopping</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
