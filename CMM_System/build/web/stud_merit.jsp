<%-- 
    Document   : stud_merit
    Created on : Dec 31, 2020, 8:10:44 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>CMMS - Merit</title>

        <!-- Custom fonts for this template-->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="css/sb-admin-2.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <!-- Page Wrapper -->
        <div id="wrapper">
            
            <%@include file="asset/stud_sidebar.jsp"%>

            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">

                <!-- Main Content -->
                <div id="content">

                    <%@include file="asset/topbar.jsp"%>

                    <!-- Begin Page Content -->
                    <div class="container-fluid">

                        <!-- Page Heading -->
                        <div class="d-sm-flex align-items-center justify-content-between mb-4">
                            
                            </div>
                            
                            <div class="container-fluid">
                                <h1 class="h3 mb-0 text-gray-800">Mapek '20(Nama program)</h1><br>
                                <p class="mb-2 text-gray-800">Program > MAPEK'21 > <b>Program Name ></b></p>
                                <hr class="sidebar-divider my-0"><br>
                                <div class="card shadow mb-4">
<!--                                    <div class="card-header py-3 center">
                                        <h2 class="m-0 font-weight-bold text-primary text-center">Program details</h2>
                                    </div>-->
                                    <div class="card-body">
                                        
                                        <h4 class="mb-2 text-gray-800"><b>Program Details</b></h4>
                                        <p class="mb-2 text-gray-800"><b>Program Name:</b> Apa nama ?</p>
                                        <p class="mb-2 text-gray-800">Location: Kat mana ?</p>
                                        <p class="mb-2 text-gray-800">Time: Bile ?</p>
                                        <p class="mb-2 text-gray-800">Start Date: Bila start ?</p>
                                        <p class="mb-2 text-gray-800">Organizer: Sape buat ?</p>
                                        <p class="mb-2 text-gray-800">Category: Jenis ape ?</p>
                                        <p class="mb-2 text-gray-800">Description: Ce citer ce citer ?</p>
                                        
                                    </div>


                                </div>
                                
                                <div class="card shadow mb-4">
<!--                                    <div class="card-header py-3 center">
-->                                        <h2 class="m-3 font-weight-bold text-primary text-center">Add list of program's member</h2><!--
                                    </div>-->

                                    <div class="card-body">
                                        <center>
                                        <form class="row g-3 text-center ">
                                                  <div class="col-3">
                                                    <input type="password" class="form-control" id="inputPassword2" placeholder="Password">
                                                  </div>
                                                  <div class="col-1">
                                                    <input type="password" class="form-control" id="inputPassword2" placeholder="Password">
                                                  </div>
                                                <div class="col-1">
                                                    <input type="password" class="form-control" id="inputPassword2" placeholder="Password">
                                                  </div>
                                                  <div class="col-1">
                                                    <input type="password" class="form-control" id="inputPassword2" placeholder="Password">
                                                  </div>
                                                <div class="col-1">
                                                    <input type="password" class="form-control" id="inputPassword2" placeholder="Password">
                                                  </div>
                                                  <div class="col-auto">
                                                    <button type="submit" class="btn btn-primary mb-3">Confirm identity</button>
                                                  </div>
                                            </form></center>
                                        
                                        <hr class="sidebar-divider my-0"><br>
                                        
                                        
                                    </div>


                                </div>
                                
                            </div>
                            
                            
                        
                        
                    </div>
                    <!-- /.container-fluid -->

                </div>
                <!-- End of Main Content -->

                <%@include file="asset/footer.jsp" %>

            </div>
            <!-- End of Content Wrapper -->

        </div>
        <!-- End of Page Wrapper -->
        
        <%@include file="asset/scrollTop.jsp"%>
        <%@include file="asset/bootstrapScript.jsp"%>
    </body>
</html>
