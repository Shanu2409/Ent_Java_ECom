<%-- 
    Document   : AllBoooks
    Created on : 18 Aug, 2023, 8:04:20 PM
    Author     : shanu
--%>

<%@page import="java.io.File"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.ProductDetails"%>
<%@page import="com.db.DbConnect"%>
<%@page import="com.DAO.ProductsDAOImpl"%>
<%@page import="com.DAO.ProductsDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>E-Commerce All Products</title>
        <%@include file="allCssAdmin.jsp" %>
        <style>
            thead {
                color: white;
            }
        </style>
    </head>
    <body>

        <%@include file="navbarAdmin.jsp" %>
        <h3 class="text-center">All Products</h3>

        <table class="table table-striped">
            <thead class="bg-primary">
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Image</th>
                    <th scope="col">Product Name</th>
                    <th scope="col">Owner Name</th>
                    <th scope="col">Price</th>
                    <th scope="col">Category</th>
                    <th scope="col">Status</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                <%
                    ProductsDAOImpl dao = new ProductsDAOImpl(DbConnect.getCon());
                    String path = getServletContext().getRealPath("") + File.separator + "products";
                    List<ProductDetails> list = dao.getAllProducts();

                    for (ProductDetails p : list) {
                %>
                <tr>
                    <td><%= p.getProductId() %></td>
                    <td><img alt="${pageContext.request.contextPath}/products/<%=p.getPhotoName()%>" src="${pageContext.request.contextPath}/products/<%=p.getPhotoName()%>" width="50px" height="50px"/></td>
                    <td><%= p.getProductname()%></td>
                    <td><%= p.getOwner()%></td>
                    <td><%= p.getPrice()%></td>
                    <td><%= p.getProductCategory()%></td>
                    <td><%= p.getStatus()%></td>
                    <td>
                        <a href="" class="btn btn-sm btn-primary">Edit</a>
                        <a href="" class="btn btn-sm btn-danger">Delete</a>
                    </td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </body>
</html>
