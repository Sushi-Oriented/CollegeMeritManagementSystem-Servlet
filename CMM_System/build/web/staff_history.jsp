<%-- 
    Document   : staff_history
    Author     : mhafizkn
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
        
        <!-- Datatable Bootstrap -->
        <script src="js/demo/datables-demo.js"></script>
        
        <!-- Google Font -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@700&display=swap" rel="stylesheet">
        
        <style>
/*            #textpg{
                font-family: 'Noto Sans JP', sans-serif;
                text-transform: uppercase;
            }*/
            .subtextpg{
                margin-top: -10px;
            }
            table{
                text-align: center;
            }
        </style>
        
    </head>
    <body>
        <!-- Page Wrapper -->
        <div id="wrapper">
            
            <%@include file="asset/staff_sidebar.jsp"%>

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
                                Requested Program &nbsp;
                                <i class="fas fa-history"></i>
                            </h1>
                            <a class="btn btn-maroon" href="staff_index.jsp" role="button"><i class='fas fa-arrow-left'></i>Back</a>
                        </div>
                        
                        <div class="subtextpg">
                            <p style="font-style: italic; margin-bottom: -8px;">
                                View the previous requested program
                            </p>
                            <hr>
                        </div>
                        
                    </div>
                    <!-- /.container-fluid -->
                    
                    <!-- Content-array-program -->
                    <div class="container-fluid text-center">    
                        <div class="row content">
                            <div class="col-lg-12 text-left">
                                <div class="card">
                                    <div class="card-body">
                                        <h3 style="text-decoration: underline;"><b>Program Details</b></h3>
                                        <table class="table table-bordered table-hover" id="tableProgram" style="width: 100%" cellspacing="0">
                                            <thead style="background-color: #7a133c; color: white;">
                                                <tr>
                                                    <th>No.</th>
                                                    <th>Student</th>
                                                    <th>Program Name</th>                                                    
                                                    <th>Category</th>
                                                    <th>Organizer</th>
                                                    <th>Start Date</th>
                                                    <th>End Date</th>
                                                    <th>Status</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <%                                                
                                                Vector progList = (Vector) session.getAttribute("progList");
                                                if (progList != null && (progList.size() > 0)){
                                                for (int index=0; index < progList.size();index++){
                                                    Program pro = (Program) progList.elementAt(index);
                                            %>
                                            <tbody>
                                                <tr>
                                                    <td><%= index + 1 %></td>
                                                    <td><%= pro.getStudName()%></td>
                                                    <td><%= pro.getProgName()%></td>                                                   
                                                    <td><%= pro.getProgCategory()%></td>
                                                    <td><%= pro.getProgOrganizer()%></td>
                                                    <td><%= pro.getProgStartDate()%></td>
                                                    <td><%= pro.getProgEndDate()%></td>
                                                    <td style="font-weight: bold; font-style: italic;"><%= pro.getProgStatus()%></td>
                                                    <td>
                                                        <form action="staff_historyDetails" method="get">
                                                            <input type="int" name="progID" value="<%= pro.getProgID()%>" hidden>
                                                            <button class="btn btn-maroon" type="submit">
                                                                <i class="fas fa-eye"></i>
                                                                View Details
                                                            </button>
                                                        </form>
                                                    </td>
                                                </tr>                                            
                                            </tbody>
                                            <% 
                                                    }
                                                } 
                                            %>
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