<%-- 
    Document   : editProfile
    Created on : 8 Sep, 2023, 7:32:34 PM
    Author     : shanu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit profile</title>
        <%@include file="Component/allCss.jsp" %>
    </head>
    <body>
        <%@include file="Component/navbar.jsp" %>
        
        <div class="container p-4">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="text-center mb-4 text-primary">Edit Profile</h4>
                            <form action="register" method="post">
                                <div class="form-group">
                                    <label for="exampleInputName">Enter full Name</label>
                                    <input type="text" class="form-control" id="exampleInputName" required aria-describedby="emailHelp" name="fname">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input type="email" class="form-control" id="exampleInputEmail1" required aria-describedby="emailHelp" name="email">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPhone">Phone number</label>
                                    <input type="number" class="form-control" required id="exampleInputPhone" aria-describedby="emailHelp" name="phone">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input type="password" class="form-control" required id="exampleInputPassword1" name="pass">
                                </div>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary mt-4"><i class="fa-solid fa-pen-to-square"></i> Update</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
