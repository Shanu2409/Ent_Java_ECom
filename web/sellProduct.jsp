<%-- 
    Document   : sellProduct
    Created on : 8 Sep, 2023, 7:27:09 PM
    Author     : shanu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sell Product</title>
        <%@include file="Component/allCss.jsp" %>
    </head>
    <body>
        <%@include file="Component/navbar.jsp" %>
        
        <div class="container">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card mt-2">
                        <div class="card-body">
                            <h4 class="text-center">Sell Product</h4>
                             
                            <form action="" method="post" enctype="multipart/form-data">
                                <div class="form-group">
                                    <label for="exampleInputName">Products Name</label>
                                    <input type="text" class="form-control" id="exampleInputName" required aria-describedby="emailHelp" name="pname">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Owner Name</label>
                                    <input type="text" class="form-control" id="exampleInputEmail1" required aria-describedby="emailHelp" name="powner">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPhone">Price</label>
                                    <input type="number" class="form-control" required id="exampleInputPhone" aria-describedby="emailHelp" name="price">
                                </div>
                                
                                <div class="form-group">
                                    <label for="exampleFormControlFile1">Upload Photo</label>
                                    <input type="file" name="bimg" class="form-control-file" id="exampleFormControlFile1">
                                </div>

                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary mt-4"><i class="fa-solid fa-plus"></i> SELL</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
