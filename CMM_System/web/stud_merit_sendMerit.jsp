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

        <!-- Custom styles for this template-->
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
                                <h1 class="h3 mb-0 text-gray-800">Mapek '20(Nama program)</h1><br>
                                <p class="mb-2 text-gray-800">Merit > Approval Program > <b> <%= detailsprogram.getProgName()%></b></p>
                                <hr class="sidebar-divider my-0"><br>
                                <div class="card shadow mb-4">
<!--                                    <div class="card-header py-3 center">
                                        <h2 class="m-0 font-weight-bold text-primary text-center">Program details</h2>
                                    </div>-->
                                    <div class="card-body">
                                        
                                        <h4 class="mb-2 text-gray-800"><b>Program Details</b></h4>
                                   
                                        <p class="mb-2 text-gray-800"><b>Program Name:</b> <%= detailsprogram.getProgName()%></p>
                                        <p class="mb-2 text-gray-800"><b>Location:</b> <%= detailsprogram.getProgLocation()%></p>
                                        <p class="mb-2 text-gray-800"><b>Time:</b> ?</p>
                                        <p class="mb-2 text-gray-800"><b>Start Date:</b> <%= detailsprogram.getProgStartDate()%></p>
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
                                                  <label for="validationTooltipUsername">Username</label>
                                                  <div class="input-group">
                                                    <div class="input-group-prepend">
                                                      <span class="input-group-text" id="validationTooltipUsernamePrepend">Name</span>
                                                    </div>
                                                    <input type="text" class="form-control" id="validationTooltipUsername" placeholder="eg: ALI BIN ABU" aria-describedby="validationTooltipUsernamePrepend" name="name" required>
                                                    <div class="invalid-tooltip">
                                                      Please choose a unique and valid username.
                                                    </div>
                                                  </div>
                                                </div>
                                                  
                                                <div class="col-md-2 mb-3">
                                                  <label for="validationTooltipUsername">Position/Role</label>
                                                  <div class="dropdown mb-4" >
                                                                <select class="form-control" id="1" onclick="cc()" name="role">
                                                                    <option id="Secretariat" value="Secretariat">Secretariat</option>
                                                                    <option  value="Head Of Department">Head Of Department</option>
                                                                    <option  value="Treasurer">Treasurer</option>
                                                                    <option value="Secretary">Secretary</option>
                                                                    <option value="Deputy Director">Deputy Director</option>
                                                                    <option value="Director">Director</option>
                                                                  </select>
                                                            </div>
                                                </div>
                                                  
                                                                                   <script>
                                                                                       function drawStuff(menu) {
                                                                                  if (menu.value == '1') {
                                                                                    //do something
                                                                                    alert(1)
                                                                                  } else if (menu.value == '2') {
                                                                                    //do something
                                                                                    alert(2)
                                                                                  } else if (menu.value == '3') {
                                                                                    //do something
                                                                                    alert(3)
                                                                                  }
                                                                                }

                                    function cc() {
                                        var x =3;
                                        document.getElementById("merit").value = "x";
                            //            document.getElementById("demo").href.replace("read_page","sapatu");
//                                         $('a').each(function(){
//                                        this.href = this.href.replace ('readpage', x);
                                         });
                                    }
                                </script>
                                                  
                                                <div class="col-md-3 mb-3">
                                                  <label for="validationTooltipUsername">Matric No</label>
                                                  <div class="input-group">
                                                    <div class="input-group-prepend">
                                                      <span class="input-group-text" id="validationTooltipUsernamePrepend">Matric No</span>
                                                    </div>
                                                    <input type="text" class="form-control" id="validationTooltipUsername" placeholder="eg: B19AC0000" aria-describedby="validationTooltipUsernamePrepend" name="matricNum" required>
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
                                                    <input type="int" class="form-control"  placeholder="eg: 98071456XXXX" name="icNum" required>
                                                    <div class="invalid-tooltip">
                                                      Please choose a unique and valid username.
                                                    </div>
                                                  </div>
                                                </div>
                                                <div class="col-md-1 mb-3">
                                                  <label for="validationTooltip03">Merit</label>
                                                  <input type="text" class="form-control"  placeholder="Merit" name="merit" id="merit" required>
                                                  <div class="invalid-tooltip">
                                                    Please provide a valid city.
                                                  </div>
                                                </div>
                                              </div>
                                            
                                                <input type="int" name="progid" value="<%= detailsprogram.getProgID()%>" hidden>
                                                <center><input class="btn btn-circle2 " style="background-color: #8A2BE2; color: white; font-size: 13px"  type="submit" value="ADD MEMBER"></input></center>
                                            </form>
                                     
                                         
                               
                                        
                                                    <!-- Begin Page Content -->
             <hr class="sidebar-divider my-3"><br>
                

                    <!-- Page Heading -->
                    <p class="mb-2 text-gray-800"><b>Participant List</b></p>
                 
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead style="background-color: #7a133c; color: white;">
                                        <tr>
                                            <th>Name</th>
                                            <th>Position</th>
                                            <th>Matric No</th>
                                            <th>Ic Number</th>
                                            <th>Merit</th>
                                         
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
                                        </tr>
                                        
  
        <% } }%>  
                                    </tbody>
                                </table>
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

    <!-- Page level plugins -->
    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/datatables-demo.js"></script>
    
<!--    <script src="vendor/datatables/jquery.dataTables.min.jsp"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.jsp"></script>
    <script src="js/demo/datatables-demo.js"></script>-->
    
    </body>
</html>
