<%@ page import="com.sun.jdi.connect.spi.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: MouhamedZg
  Date: 3/29/2018
  Time: 2:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<head>
    <meta charset="utf-8" />
    <title>Admin Log In</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
    <meta content="Coderthemes" name="author" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <!-- App favicon -->
    <link rel="shortcut icon" href="assets/images/favicon.ico">

    <!-- App css -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/metismenu.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/style.css" rel="stylesheet" type="text/css" />

    <script src="assets/js/modernizr.min.js"></script>



</head>
<script src="assets/js/jquery.min.js"></script>



<body>

<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-12">

                <div class="wrapper-page">

                    <div class="m-t-40 card-box">
                        <div class="text-center">
                            <h2 class="text-uppercase m-t-0 m-b-30">
                                <a href="index.html" class="text-success">
                                    <span><img src="assets/images/download.png" alt="" height="100"></span>
                                </a>
                            </h2>
                            <!--<h4 class="text-uppercase font-bold m-b-0">Sign In</h4>-->
                        </div>
                        <div class="account-content">
                            <form class="form-horizontal" method="post"  id="LoginForm">

                                <div id="msg"><span id="info"></span></div>
                                <div class="form-group m-b-20">
                                    <div class="col-xs-12">
                                        <span id ="res1"></span>
                                        <label for="User">Username</label>
                                        <input class="form-control" id="User" name="users" type="text"  required="" placeholder="Enter your username">
                                    </div>
                                </div>

                                <div class="form-group m-b-20">
                                    <div class="col-xs-12">
                                        <a href="pages-forget-password.html" class="text-muted pull-right font-14">Forgot your password?</a>
                                        <label for="password">Password</label>
                                        <input class="form-control" type="password" required="" name ="pwd" id="password" placeholder="Enter your password">
                                    </div>
                                </div>

                                <div class="form-group m-b-30">
                                    <div class="col-xs-12">
                                        <div class="checkbox checkbox-primary">
                                            <input id="checkbox5" type="checkbox">
                                            <label for="checkbox5">
                                                Remember me
                                            </label>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group account-btn text-center m-t-10">
                                    <div class="col-xs-12">
                                        <input  type="submit" class="btn btn-lg btn-primary btn-block" value="Log In" id="login">
                                    </div>
                                </div>

                            </form>

                            <div class="clearfix"></div>

                        </div>
                    </div>
                    <!-- end card-box-->


                    <div class="row m-t-50">
                        <div class="col-sm-12 text-center">
                            <p class="text-muted">Don't have an account? <a href="pages-register.html" class="text-dark m-l-5">Sign Up</a></p>
                        </div>
                    </div>

                </div>
                <!-- end wrapper -->

            </div>
        </div>
    </div>
</section>
<script type="text/javascript">

    $(document).ready(function (e) {
        $('#LoginForm').submit(function () {
            $.ajax({
                type : "POST",
                url : "/LoginServlet",
                data : {
                    username : $('#User').val(),
                    password : $('#password').val()

                },
                success : function (data) {
                    if(data == 'hello'){
                        window.location.replace("/Login.jps");
                    }
                    else{
                        $("#msg").fadeIn(1000,function () {
                            $("#msg").html("<div class='alert alert-danger'>ID or Password invalid </div>");
                            $("#login").html('login');

                        })
                    }

                }

            })

            return false;
        })

    })
</script>

<!-- jQuery  -->

<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/metisMenu.min.js"></script>
<script src="assets/js/waves.js"></script>
<script src="assets/js/jquery.slimscroll.js"></script>


<script src="assets/js/jquery.core.js"></script>
<script src="assets/js/jquery.app.js"></script>

</body>



