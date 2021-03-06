<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.TimeMeasureMentDAO"%>
<%@page import="com.DAO.TimeMeasureMentEntry"%>
<!doctype html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>Binary Search Sample html - for github</title>
        <link rel="shortcut icon" type="image/png" href="favicon.ico"/>

        <!-- start: CSS -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/css/style.min.css" rel="stylesheet">
        <link href="assets/css/retina.min.css" rel="stylesheet">
        <link href="assets/css/print.css" rel="stylesheet" type="text/css" media="print"/>
        <!-- end: CSS -->

        <!-- start: JavaScript-->
        <!--[if !IE]>-->
        <script src="assets/js/jquery-2.0.3.min.js"></script>
        <!--<![endif]-->

        <!--[if IE]>
            <script src="assets/js/jquery-1.10.2.min.js"></script>
        <![endif]-->

        <!--[if !IE]>-->
        <script type="text/javascript">
            window.jQuery || document.write("<script src='assets/js/jquery-2.0.3.min.js'>" + "<" + "/script>");</script>
        <!--<![endif]-->

        <!--[if IE]>
                <script type="text/javascript">
                window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
                </script>
        <![endif]-->             

        <script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>	

        <!-- page scripts -->
        <script src="assets/js/jquery-ui-1.10.3.custom.min.js"></script>
        <!--[if lte IE 8]><script language="javascript" type="text/javascript" src="assets/js/excanvas.min.js"></script><![endif]-->
        <script src="assets/js/jquery.autosize.min.js"></script>
        <script src="assets/js/jquery.placeholder.min.js"></script>
        <script src="assets/js/moment.min.js"></script>

        <!-- theme scripts -->
        <script src="assets/js/core.min.js"></script>

        <!-- end: JavaScript-->
    </head>


    <body>

        <!-- HeaderBar -->
        <header class="navbar" style="font-family: arial">
            <div class="container">
                <a id="main-menu-toggle" class="hidden-xs open" >
                    <i class="fa fa-edit"></i>&nbsp;
                </a>		
                <div class="col-sm-7 col-xs-8 col-lg-6" style="margin:8px; padding-left: 5px; padding-top: 2px;">
                    <a href="#" target="_blank" style="text-decoration: none">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <strong>
                            Test
                        </strong>
                        &nbsp;&nbsp;
                        -
                        &nbsp;&nbsp;
                        html files
                    </a>
                </div>


                <!-- HeaderMenu -->
                <div class="nav-no-collapse header-nav">
                    <ul class="nav navbar-nav pull-right">

                        <!-- HeaderUserDropdown -->
                        <li class="dropdown">
                            <a class="btn account dropdown-toggle" data-toggle="dropdown" href="#">
                                <div class="avatar">
                                </div>
                                <div class="user">
                                    <span class="hello">
                                        Welcome!
                                    </span>
                                    <span class="name">
                                        Username
                                    </span>
                                </div>
                            </a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="index.html#">
                                        <i class="fa fa-cog"></i>
                                        Settings
                                    </a>
                                </li>
                                <li>
                                    <a href="page-login.html">
                                        <i class="fa fa-sign-out"></i> 
                                        Log Out
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!-- HeaderUserDropdown -->
                    </ul>
                </div>
                <!-- /HeaderMenu -->

            </div>
        </header>
        <!-- /HeaderBar -->


        <div class="container" style="font-family: arial">
            <div class="row">

                <!-- start: Main Menu -->
                <div id="sidebar-left" class="col-lg-2 col-sm-1">
                    <div class="sidebar-nav nav-collapse collapse navbar-collapse">

                        <ul class="nav main-menu">

                            <li>
                                <a class="dropmenu">
                                    <i class="fa fa-pencil-square"></i>
                                    <span class="hidden-sm text">
                                        Methods
                                    </span>
                                    <span class="chevron closed"></span>
                                </a>
                                <ul style="display: block">
                                    <li class="active">
                                        <a href="method1.jsp">
                                            <i class="fa fa-pencil-square-o"></i>
                                            <span class="hidden-sm text">
                                                &emsp;&nbsp;Search
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="method2.jsp">
                                            <i class="fa fa-pencil-square-o"></i>
                                            <span class="hidden-sm text">
                                                &emsp;&nbsp;Sorting
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-pencil-square-o"></i>
                                            <span class="hidden-sm text">
                                                &emsp;&nbsp;More Algorithms to come.
                                            </span>
                                        </a>
                                    </li>
                                </ul>
                            </li>

                        </ul>

                    </div>

                    <a href="#" id="main-menu-min" class="full visible-md visible-lg">
                        <i class="fa fa-angle-double-left"></i>
                    </a>

                </div>
                <!-- end: Main Menu -->


                <!-- start: Content -->
                <div id="content" class="col-lg-10 col-sm-11 ">

                    <ol class="breadcrumb">
                        <li>
                            <a href="#" style="text-decoration: none;">
                                &nbsp;TEST
                            </a>
                        </li>
                        <li class="active">
                            Binary Search
                        </li>
                    </ol>

                    <!--  panel 1  -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="box">

                                <!-- PanelHeading -->
                                <div class="box-header" style="background-color: #4A96AD; border-color: #42879b; color: white;">
                                    <h2>
                                        <i class="fa fa-edit" style="color: white;"></i>
                                        <span class="break"></span>
                                        <strong>Panel 1</strong> Diagram
                                    </h2>
                                    <div class="box-icon">
                                        <a href="#" class="btn-minimize"><i class="fa fa-chevron-up" style="color: white;"></i></a>
                                        <a href="#" class="btn-close"><i class="fa fa-times" style="color: white;"></i></a>
                                    </div>
                                </div>
                                <!-- /PanelHeading -->

                                <!-- Panel Content -->
                                <div class="box-content clearfix">

                                    <div class="row">&nbsp;</div>

                                    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
                                    <script type="text/javascript">
<%
    ArrayList<TimeMeasureMentEntry> entries_binary = TimeMeasureMentDAO.getTimeMeasurements("Binary Search");
    ArrayList<TimeMeasureMentEntry> entries_interpolation = TimeMeasureMentDAO.getTimeMeasurements("Interpolation Search");
    ArrayList<TimeMeasureMentEntry> entries_java = TimeMeasureMentDAO.getTimeMeasurements("Java Search");
    
%>                                        

            google.load("visualization", "1", {packages: ["corechart"]});
            google.setOnLoadCallback(drawChart);
            function drawChart() {
                var data1 = google.visualization.arrayToDataTable([
                    ['Algorithm', 'Binary Search'],
<% for (int i = 0; i < entries_binary.size(); i++) {%>
                        ['<%=entries_binary.get(i).getDate()%>', <%=entries_binary.get(i).getTime()%>],
<% } %>

                ]);
                
                var data2 = google.visualization.arrayToDataTable([
                    ['Algorithm', 'Interpolation Search'],
<% for (int i = 0; i < entries_interpolation.size(); i++) {%>
                        ['<%=entries_interpolation.get(i).getDate()%>', <%=entries_interpolation.get(i).getTime()%>],
<% }%>
    ]);
    
                var data3 = google.visualization.arrayToDataTable([
                    ['Algorithm', 'Java Built in Search'],
<% for (int i = 0; i < entries_java.size(); i++) {%>
                        ['<%=entries_java.get(i).getDate()%>', <%=entries_java.get(i).getTime()%>],
<% }%>    

                ]);                
                var options = {
                    title: 'Execution Time',
                    hAxis: {title: 'InvocationDate', titleTextStyle: {color: 'black'}},
                    vAxis: {title: 'Time', titleTextStyle: {color: 'black'}}

                };
                var chart = new google.visualization.LineChart(document.getElementById('Chart1'));
                var joinedData;
                var joinedData = new google.visualization.DataTable();
                joinedData.addRows(data1);joinedData.addRows(data2);joinedData.addRows(data3);
                //var joinedData = google.visualization.data.join(data1, data2, 'full', [[0, 0]], [1], [1]);
                //joinedData = google.visualization.data.join(joinedData, data3, 'full', [[0, 0]], [1], [1]);
                chart.draw(joinedData, options);
            }

                                    </script>

                                    <div id="Chart1" style="width: 900px; height: 500px;"></div>

                                    <div class="row">&nbsp;</div>

                                </div>
                                <!-- /Panel Content -->

                            </div>
                        </div>
                    </div>
                    <!--  /panel /1  -->


                    <!--  panel 2  -->
                    <div class="row">
                        <div class="col-lg-12">

                            <div class="box">

                                <!-- PanelHeading -->
                                <div class="box-header" style="background-color: #4A96AD; border-color: #42879b; color: white;">
                                    <h2>
                                        <i class="fa fa-edit" style="color: white;"></i>
                                        <span class="break"></span>
                                        <strong>Panel 2</strong> Diagram
                                    </h2>
                                    <div class="box-icon">
                                        <a href="#" class="btn-minimize"><i class="fa fa-chevron-up" style="color: white;"></i></a>
                                        <a href="#" class="btn-close"><i class="fa fa-times" style="color: white;"></i></a>
                                    </div>
                                </div>
                                <!-- /PanelHeading -->

                                <!-- Panel Content -->
                                <div class="box-content clearfix">

                                    <div class="row">&nbsp;</div>
                                    <div class="row">&nbsp;</div>
                                    <div class="row">&nbsp;</div>
                                    <div class="row">&nbsp;</div>
                                    <div class="row">&nbsp;</div>
                                    <div class="row">&nbsp;</div>
                                    <div class="row">&nbsp;</div>
                                    <div class="row">&nbsp;</div>

                                </div>
                                <!-- /Panel Content -->

                            </div>
                        </div>
                    </div>
                    <!--  /panel /2  -->

                </div>
                <!-- end: Content -->

            </div>

        </div>

        <div class="clearfix"></div>

        <!-- footer -->
        <footer style="font-family: arial">
            <p>
                <span style="text-align:left;float:left">
                    <a href="#" style="text-decoration: none; color: white;" target="_blank">
                        &nbsp;&nbsp;&nbsp;html files for github
                    </a>
                </span>
                <span class="hidden-phone" style="text-align:right;float:right">
                    <a href="#" style="text-decoration: none; color: white;" target="_blank">
                        TEST
                        &copy;
                        &nbsp;
                        2014
                        &nbsp;&nbsp;
                    </a>
                </span>
            </p>
        </footer>
        <!-- /footer -->

    </body>
</html>