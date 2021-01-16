<%-- 
    Document   : stud_editprofile
    Created on : Jan 16, 2021, 2:19:10 PM
    Author     : Alifah Ilyana binti Soharto B19EC0003
--%>

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

        <title>CMMS - Edit Profile</title>

        <!-- Custom fonts for this template-->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="css/sb-admin-2.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <% User student = (User)session.getAttribute("student"); %>
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
                            <h1 class="h3 mb-0 text-gray-800">This is the profile page stud</h1>
                        </div>
                        <form method="post" action="EditProfileStudent">
                            Full name: <input type="text" name="fullname" value="<%= student.getFullname() %>" disabled><br>
                            Nickname: <input type="text" name="nickname" value="<%= student.getNickname() %>"><br>
                            First email: <input type="text" name="firstemail" value="<%= student.getFirstemail() %>" disabled><br>
                            Second email: <input type="text" name="secondemail" value="<%= student.getSecondemail() %>"><br>
                            Student ID: <input type="text" name="studentID" value="<%= student.getStudentID() %>" disabled><br>
                            Student Phone No: <input type="text" name="studphoneno" value="<%= student.getStudphoneno() %>"><br>
                            <button type="submit">Save</button>
                            <button type="reset">Reset</button>
                        </form>
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
