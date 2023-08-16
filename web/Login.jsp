<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>E-Commerce Login</title>
        <%@include file="Component/allCss.jsp" %>
        <style>
            body {
                background-color: #f0f1f2;
            }
        </style>
    </head>
    <body>
        <%@include file="Component/navbar.jsp" %>

        <div class="container p-4">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="text-center mb-5">Login Page</h4>
                            <form>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input type="email" class="form-control" id="exampleInputEmail1" required aria-describedby="emailHelp">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input type="password" class="form-control" required id="exampleInputPassword1">
                                </div>
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">Keep you sign in forever ?</label>
                                </div>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary mt-4"><i class="fa-solid fa-right-to-bracket"></i> Login</button>
                                </div>
                                <div class="text-center mt-2">
                                    <a href="Register.jsp">Create Account </a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <%@include file="Component/footer.jsp" %>
    </body>
</html>
