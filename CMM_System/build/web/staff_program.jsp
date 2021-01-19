<%@page import="bean.Program"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>CMMS - Program</title>

        <!-- Custom fonts for this template-->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="css/sb-admin-2.css" rel="stylesheet" type="text/css"/>
        <style>
        table, td, th {
          border: 1px solid black;
          padding: 10px;
        }
        
        th{
            background-color: #AF3550;
            color: white;
        }

        table {
          border-collapse: collapse;
          width: 100%;
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
                            <h1 class="h3 mb-0 text-gray-800">Program Approval</h1>
                            <a class="btn btn-maroon" href="stud_index.jsp" role="button"><i class='fas fa-arrow-left'></i>  Back</a>
                        </div>
                        
                        <p style="font-style: italic; margin-bottom: -8px;">
                                Program > Program Verification
                        </p><hr>
                        
                        <!-- Page Details -->
                        <div class="container-fluid">
                            <div class="card shadow mb-4">
                                 <div class="card-body">
                                    <%
                                        Vector progList = (Vector) session.getAttribute("progList");
                                        if (progList != null && (progList.size() > 0)){
                                    %>
                                    <center>
                                    <table>
                                        <tr>
                                            <th>No.</th>
                                            <th>ID</th>
                                            <th>Name</th>
                                            <th>Location</th>
                                            <th>Start</th>
                                            <th>End</th>
                                            <th>Organizer</th>
                                            <th>Category</th>
                                            <th>Description</th>
                                            <th>Status</th>
                                            <th colspan="2">Action</th>
                                        </tr>
                                        <%
                                            for (int index=0; index < progList.size();index++){
                                                Program stude_prog = (Program) progList.elementAt(index);
                                        %>
                                        <tr>
                                            <td><%= index + 1 %></td>
                                            <td><%= stude_prog.getProgID() %></td>
                                            <td><%= stude_prog.getProgName() %></td>
                                            <td><%= stude_prog.getProgLocation() %></td>
                                            <td><%= stude_prog.getProgStartDate() %></td>
                                            <td><%= stude_prog.getProgEndDate() %></td>
                                            <td><%= stude_prog.getProgOrganizer()%></td>
                                            <td><%= stude_prog.getProgCategory()%></td>
                                            <td><%= stude_prog.getProgDescription()%></td>
                                            <td><%= stude_prog.getProgStatus()%></td>
                                            <td><form action="details_programServlet"><input type="text" name ="progID" value="<%= stude_prog.getProgID() %>" hidden><button type="submit">View</button></form></td>
                                        </tr>
                                <% }} %>
                                    </table>
                                    </center>
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
