<%-- 
    Document   : stud_merit
    Created on : Dec 31, 2020, 8:10:44 PM
    Author     : User
--%>

<%@page import="bean.Merit"%>
<%@page import="java.util.Vector"%>
<%@page import="bean.Program"%>
<%@page import="bean.User"%>
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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <!-- Custom styles for this template-->
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/sb-admin-2.css" rel="stylesheet" type="text/css"/>
    
    </head>
    <body>
        
        <% Program detailsprogram = (Program)session.getAttribute("detailsprogram"); %>
        <% Merit dispmerit = (Merit)session.getAttribute("dispmerit"); %>
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
                                <h1 class="h3 mb-0 text-gray-800"><%= detailsprogram.getProgName()%></h1><br>
                                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                                    
                                <p class="mb-2 text-gray-800">Merit > Approval Program > <b> <%= detailsprogram.getProgName()%></b></p>
                                    <a class="btn btn-maroon" href="stud_merit_SELECTapprovalProgram" role="button"><i class='fas fa-arrow-left'></i>Back</a>

                                 </div>
                                    <hr class="sidebar-divider my-0"><br>
                                <div class="card shadow mb-4">
<!--                                    <div class="card-header py-3 center">
                                        <h2 class="m-0 font-weight-bold text-primary text-center">Program details</h2>
                                    </div>-->
                                    <div class="card-body">
                                        
                                        <h4 class="mb-2 text-gray-800"><b>Program Details</b></h4>
                                   
                                        <p class="mb-2 text-gray-800"><b>Program Name:</b> <%= detailsprogram.getProgName()%></p>
                                        <p class="mb-2 text-gray-800"><b>Location:</b> <%= detailsprogram.getProgLocation()%></p>
                                        <p class="mb-2 text-gray-800"><b>Start Date:</b> <%= detailsprogram.getProgStartDate()%></p>
                                        <p class="mb-2 text-gray-800"><b>End Date:</b> <%= detailsprogram.getProgEndDate()%></p>
                                        <p class="mb-2 text-gray-800"><b>Organizer:</b> <%= detailsprogram.getProgOrganizer()%></p>
                                        <p class="mb-2 text-gray-800"><b>Category:</b> <%= detailsprogram.getProgCategory()%></p>
                                        <p class="mb-2 text-gray-800"><b>Description:</b> <%= detailsprogram.getProgDescription()%></p>
                                        
                                    </div>


                                </div>
                                
                                <div class="card shadow mb-4">
<!--                                    <div class="card-header py-3 center">
-->                                        <h2 class="m-3 font-weight-bold text text-center">Add list of program's member</h2><!--
                                    </div>-->

                                    <div class="card-body">
                                      
                                        <form class="needs-validation" action="stud_merit_INSERTsendMerit" method="post">
                                              <div class="form-row">
                                                <div class="col-md-4 mb-3">
                                                  <label for="validationTooltipUsername">Name</label>
                                                  <div class="input-group">
                                                    <div class="input-group-prepend">
                                                      <span class="input-group-text" id="validationTooltipUsernamePrepend">Name</span>
                                                    </div>
                                                    <input type="text" class="form-control" style='text-transform:uppercase' id="validationTooltipUsername" placeholder="eg: ALI BIN ABU" aria-describedby="validationTooltipUsernamePrepend" name="name" required>
                                                    <div class="invalid-tooltip">
                                                      Please choose a unique and valid username.
                                                    </div>
                                                  </div>
                                                </div>
                                                  
                                                <div class="col-md-2 mb-3">
                                                  <label for="validationTooltipUsername">Position/Role</label>
                                                  <div class="dropdown mb-4" >
                                                      
                                                                <select class="form-control" onclick="myFunction(event)" id="role" name="role">
                                                                    <option value="Secretariat" selected="">Secretariat</option>
                                                                    <option value="Head Of Department">Head Of Department</option>
                                                                    <option value="Treasurer">Treasurer</option>
                                                                    <option value="Secretary">Secretary</option>
                                                                    <option value="Deputy Director">Deputy Director</option>
                                                                    <option value="Director">Director</option>
                                                                  </select>
                                                            </div>
                                                </div>
                                                  
                                                                                  
                                                  
                                                <div class="col-md-3 mb-3">
                                                  <label for="validationTooltipUsername">Matric No</label>
                                                  <div class="input-group">
                                                    <div class="input-group-prepend">
                                                      <span class="input-group-text" id="validationTooltipUsernamePrepend">Matric No</span>
                                                    </div>
                                                      <input type="text" class="form-control" style='text-transform:uppercase' pattern="[A-Za-z]{1}[0-9]{2}[A-Za-z]{2}[0-9]{4}"  placeholder="eg: B19AC0000" name="matricNum" required>
                                                    <div class="invalid-tooltip">
                                                      Please choose a unique and valid username.
                                                    </div>
                                                  </div>
                                                </div>
                                                <div class="col-md-2 mb-3">
                                                  <label for="validationTooltipUsername">IC Number</label>
                                                  <div class="input-group">
                                                    <div class="input-group-prepend">
                                                      <span class="input-group-text" id="validationTooltipUsernamePrepend">IC</span>
                                                    </div>
                                                    <input type="text" pattern="[0-9]{12}" class="form-control" placeholder="eg: 98071456XXXX" name="icNum" required>
                                                    <div class="invalid-tooltip">
                                                      Please choose a unique and valid username.
                                                    </div>
                                                  </div>
                                                </div>
                                                <div class="col-md-1 mb-3">
                                                  <label for="validationTooltip03">Merit</label>
                                                  <input type="text" class="form-control"  placeholder="Merit" name="merit" id="merit" value="5" readonly>
                                                  <div class="invalid-tooltip">
                                                    Please provide a valid city.
                                                  </div>
                                                </div>
                                              </div>
                                                
                                                <input type="int" name="progid" value="<%= detailsprogram.getProgID()%>" hidden>
                                               
                                                
                                                <center><input class="btn btn-circle2 btn-maroon" style="font-size: 15px;float: center;"  type="submit" value="ADD MEMBER"></input></center>
                                                
                                                    
                                        </form>
                                             <p id="demo"></p>
                                                            <script>
                                                                function myFunction(e) {
                                                                    var x = document.getElementById("role").value;
//                                                                  document.getElementById("merit").value = x;
                                                                    
                                                                    if (x == 'Secretariat') {
                                                                        document.getElementById("merit").value = 5;
                                                                    }
                                                                    else if (x == 'Head Of Department') {
                                                                        document.getElementById("merit").value = 8;
                                                                    }
                                                                    else if (x == 'Treasurer' || x == 'Secretary' ) {
                                                                        document.getElementById("merit").value = 10;
                                                                    }
                                                                    else if (x == 'Deputy Director' || x == 'Director') {
                                                                        document.getElementById("merit").value = 15;
                                                                    }
                                                                    
                                                                }
                                                                

                                                            </script>
                                              
                              
                                                
                               
                                        
                                                    <!-- Begin Page Content -->
             <hr class="sidebar-divider my-3"><br>
                

                    <!-- Page Heading -->
                   
                        <p class="mb-2 text-black-800"><b>Participant List</b></p>
                        
                 
                    
                        
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataMeritTable" width="100%" cellspacing="0">
                                    <thead style="background-color: #7a133c; color: white;">
                                        <tr>
                                            <th>Name</th>
                                            <th>Position</th>
                                            <th>Matric No</th>
                                            <th>Ic Number</th>
                                            <th>Merit</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
<!--                                    <tfoot>
                                        <tr>
                                            <th>Name</th>
                                            <th>Position</th>
                                            <th>Matric No</th>
                                            <th>Ic Number</th>
                                            <th>Merit</th>
                                        </tr>
                                    </tfoot>-->
                                    <tbody>
                                        
        <%
            Vector dm = (Vector) session.getAttribute("dm");
            if (dm != null && (dm.size() > 0)){
                for (int index=0; index < dm.size();index++){
                    Merit p = (Merit) dm.elementAt(index);
            
        %>                                          
                                        
                                        <tr>
                                            <td><%= p.getName()%></td>
                                            <td><%= p.getRole()%></td>
                                            <td><%= p.getMatricNum()%></td>
                                            <td><%= p.getIcNum()%></td>
                                            <td><%= p.getMerit()%></td>
                                            <td>
                                                <form action="stud_merit_DELETEstud" method="get">
                                                    <input type="text" name="pk" value="<%= p.getPk()%>" hidden>
                                                    <input type="text" name="name" value="<%= p.getName()%>" hidden>
                                                    
                                                    <input class="btn btn-danger btn-block" type="submit" value="Delete"></input>

                                                </form>
                                            </td>
                                        </tr>
                                        
  
        <% } }%>  
                                    </tbody>
                                </table>
                            </div>
                        </div>
                                    <button type="button" class="btn btn-block" style="background-color: #4CAF50;color: white;" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                      Submit List Student
                                    </button>

                                    <!-- Modal -->
                                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                      <div class="modal-dialog">
                                        <div class="modal-content">
                                          <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Details Program</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                          </div>
                                          <div class="modal-body">
                                              
                                                
                                                <p class="mb-2 text-gray-800 text-center"><b>Details program for merit approval</b></p><br>
                                                              <div class="row">
                                                                <div class="col-4">
                                                                    <p class="mb-2 text-gray-800"><b>Program Name:</b>
                                                                </div>
                                                                <div class="col-8"><%= detailsprogram.getProgName()%></div>
                                                              </div>
                                                              <div class="row">
                                                                <div class="col-4">
                                                                    <p class="mb-2 text-gray-800"><b>Organizer:</b>
                                                                </div>
                                                                <div class="col-8"><%= detailsprogram.getProgOrganizer()%></div>
                                                              </div>
                                                              <div class="row">
                                                                <div class="col-4">
                                                                    <p class="mb-2 text-gray-800"><b>Total Applied:</b>
                                                                </div>
                                                                <div class="col-8"><%= dm.size()%></div>
                                                              </div>
                                                              
                                          </div>
                                          <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                            
                                            <a class="btn" style="background-color: #4CAF50;color: white;" href="stud_merit_APPLYapprovalMerit" role="button">Submit</a>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
         
                <!-- /.container-fluid -->
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
        
                   <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Custom DataTable JS -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/jq-3.3.1/dt-1.10.23/fh-3.1.7/r-2.2.7/sb-1.0.1/sp-1.2.2/sl-1.3.1/datatables.min.css"/>
    <script type="text/javascript" src="https://cdn.datatables.net/v/bs4/jq-3.3.1/dt-1.10.23/fh-3.1.7/r-2.2.7/sb-1.0.1/sp-1.2.2/sl-1.3.1/datatables.min.js"></script>
    
    <script>
        $(document).ready(function() {
            $('#dataMeritTable').DataTable();
        });
    </script>
    
    </body>
</html>
