<%-- 
    Document   : stud_history
    Created on : Dec 31, 2020, 8:11:24 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Vector"%>
<%@page import="bean.Program"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>CMMS - History</title>

        <!-- Custom fonts for this template-->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="css/sb-admin-2.css" rel="stylesheet" type="text/css"/>
        
        <!-- Google Font -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@700&display=swap" rel="stylesheet">
        
        <!-- Datatable -->
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
        
        <style>
/*            #textpg{
                font-family: 'Noto Sans JP', sans-serif;
                text-transform: uppercase;
            }*/
            .subtextpg{
                margin-top: -10px;
            }
            #dataTable{
                text-align: center;
            }
        </style>
        
    </head>
    <body>
        <script>
            
        </script>
        <% Program pro = (Program)session.getAttribute("pro"); %>
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
                            <h1 class="h3 mb-0 text-gray-800" id="textpg">
                                <%= pro.getProgName()%>
                            </h1>
                            <a class="btn btn-maroon" href="stud_history.jsp" role="button">
                                <i class="fas fa-chevron-left"></i>
                                Back
                            </a>                            
                        </div>
                        
                        <div class="subtextpg">
                            <p style="font-style: italic; margin-bottom: -8px;">
                                Program > <%= pro.getProgName()%>
                            </p>
                            <hr>
                        </div>
                        
                    </div>
                    <!-- /.container-fluid -->
                    
                    <!-- Content-array-program -->
                    <div class="container-fluid text-center">    
                        <div class="row content">
                            <div class="col-lg-12 text-left">
                                
                                <div class="card shadow mb-4">
                                    <div class="card-body">
                                        <table>
                                            <tr>
                                                <th><h3 style="text-decoration: underline;"><b>Program Details</b></h3></th>
                                            </tr>
                                            <tr>
                                                <td>Program Name</td>
                                                <td>:</td>
                                                <td> <%= pro.getProgName()%></td>
                                            </tr>
                                            <tr>
                                                <td>Category</td>
                                                <td>:</td>
                                                <td> <%= pro.getProgCategory()%></td>
                                            </tr>
                                            <tr>
                                                <td>Organizer</td>
                                                <td>:</td>
                                                <td> <%= pro.getProgOrganizer()%></td>
                                            </tr>
                                            <tr>
                                                <td>Location</td>
                                                <td>:</td>
                                                <td> <%= pro.getProgLocation()%></td>
                                            </tr>            
                                            <tr>
                                                <td>Start Date</td>
                                                <td>:</td>
                                                <td> <%= pro.getProgStartDate()%></td>                                                
                                                <td>End Date</td>
                                                <td>:</td>
                                                <td> <%= pro.getProgEndDate()%></td>
                                            </tr>
                                            <tr>
                                                <td>Description</td>
                                                <td>:</td>
                                                <td> <%= pro.getProgDescription()%></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                                            
                                <div class="card shadow mb-4">
                                    <div class="card-body">
                                        <h3 style="text-decoration: underline;"><b>Participant Details</b></h3>
                                        <table class="table table-bordered table-hover" id="tableProgram" style="width: 100%" cellspacing="0">
                                            <thead style="background-color: #7a133c; color: white;">
                                                <tr>
                                                    <th>No.</th>
                                                    <th>Name</th>
                                                    <th>Role</th>
                                                    <th>Matric Number</th>
                                                    <th>IC Number</th>
                                                    <th>Merit</th>                        
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>                                            
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                            
                            </div>
                        </div>
                    </div>

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