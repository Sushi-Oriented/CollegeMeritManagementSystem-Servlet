<%-- 
    Document   : stud_history
    Created on : Dec 31, 2020, 8:11:24 PM
    Author     : User
--%>

<%@page import="org.json.JSONArray"%>
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
            #dataTable{
                text-align: center;
            }
        </style>
        
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
                            <h1 class="h3 mb-0 text-gray-800" id="textpg">
                                Program History &nbsp;
                                <i class="fas fa-history"></i>
                            </h1>
                            <a class="btn btn-maroon" href="stud_index.jsp" role="button"><i class='fas fa-arrow-left'></i>Back</a>
                        </div>
                        
                        <div class="subtextpg">
                            <p style="font-style: italic; margin-bottom: -8px;">
                                View the previous program that you have uploaded
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
                                        <table class="table table-bordered table-hover" id="historyDataTable" style="width: 100%" cellspacing="0">
                                            <thead style="background-color: #7a133c; color: white;">
                                                <tr>
                                                    <th>No.</th>
                                                    <th>Program Name</th>
                                                    <th>Category</th>
                                                    <th>Organizer</th>
                                                    <th>Program Status</th>
                                                    <th>Merit Status</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
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
        
        <script>
            <% 
               JSONArray jArray = (JSONArray) session.getAttribute("jArray"); 
               int idex;
               for(idex=0; idex<jArray.length(); idex++){                   
               }
            %>
            console.log(<%= idex %>);
            console.log(<%= jArray %>);            
            $(document).ready(function() {
                    $('#historyDataTable').DataTable( {
                        data: <%= jArray %>,
                        "columns": [
                            { "data": "Bil" },
                            { "data": "ProgramName" },        
                            { "data": "Category" },
                            { "data": "Organizer" },
                            { "data": "ProgramStatus" },
                            { "data": "MeritStatus" },
                            { "data": null, title: 'Action', wrap: true, "render": function (item) 
                                { 
                                    return '<form action="stud_programDetail" method="post"><input type="int" name="progID" value="'+item.progID+'" hidden><button class="btn btn-maroon" type="submit"><i class="fas fa-eye"></i>View Details</button></form>' 
                                } 
                            }
                        ]
                } );
            } );
        </script>
        
    </body>
</html>