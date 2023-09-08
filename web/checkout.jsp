<%-- 
    Document   : cart
    Created on : 8 Sep, 2023, 2:46:01 PM
    Author     : shanu
--%>

<%@page import="java.util.List"%>
<%@page import="com.entity.Cart"%>
<%@page import="com.db.DbConnect"%>
<%@page import="com.DAO.CartDAOImpl"%>
<%@page import="com.DAO.CartDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart</title>
        <%@include file="Component/allCss.jsp" %>
    </head>
    <body style="background-color: #f0f1f2">
        <c:if test="${empty userObj}">
            <c:redirect url="Login.jsp"></c:redirect>
        </c:if>
        <%@include file="Component/navbar.jsp" %>
        
        <% Double total = 0.0; %>
        
        
        
        <c:if test="${not empty succMsg}">
            <div class="alert alert-success" role="alert">
                Successfully deleted from the Cart
            </div>
            
            <c:remove var="succMsg" scope="session" />
        </c:if>
        
        <c:if test="${not empty failed}">
            <div class="alert alert-danger" role="alert">
                Something went wrong
            </div>
            
            <c:remove var="failed" scope="session" />
        </c:if>

        <div class="container">
            <div class="row p-2">
                <div class="col-md-6">
                    <div class="card bg-white mt-5">
                    <h3 class="text-center text-success">Your Product</h3>
                        <div class="card-body">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th scope="col">Product Name</th>
                                        <th scope="col">Owner</th>
                                        <th scope="col">Price</th>
                                        <th scope="col">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                      User u = (User) session.getAttribute("userObj");
                                      CartDAOImpl dao = new CartDAOImpl(DbConnect.getCon());
                                      
                                      List<Cart> cList =  dao.getBookByUser(u.getId());
                                      
                                      
                                      
                                      for(Cart c : cList) {
                                          total = c.getTotal();
                                    %>
                                    <tr>
                                        <th scope="row"><%= c.getProductName() %></th>
                                        <td><%= c.getOwner()%></td>
                                        <td><%= c.getPrice()%></td>
                                        <td>
                                            <a href="removeProduct?pid=<%= c.getPid()%>&&cid=<%= c.getCid()%>" class="btn btn-sm btn-danger">Remove</a>
                                        </td>
                                    </tr>
                                    
                                    <% } %>
                                    
                                    <tr>
                                        <td>Total Price</td>
                                        <td></td>
                                        <td></td>
                                        <td><i class="fa-solid fa-rupee-sign"></i> <span class="fa-solid">  <%= total %></span></td>
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
