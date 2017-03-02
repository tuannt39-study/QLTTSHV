<%--
  Created by IntelliJ IDEA.
  User: minht
  Date: 3/2/2017
  Time: 1:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="../static/css/Backoffice/Backoffice.css">
    <title>Thông Tin Đối Tác</title>
    <jsp:include page="head-html.jsp"></jsp:include>
</head>
<body>
<div id="wrapper" class="col-lg-6 center-block">
    <!-- Navigation -->
    <jsp:include page="tiles/layout/default-menu.jsp"></jsp:include>
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Quản Lý Đối tác</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="fa fa-bar-chart-o fa-fw"></i> Tìm kiếm
                        <div class="pull-right">
                            <div class="btn-group">
                                <!--------------------------------------------------------------------------------------->

                                <!--------------------------------------------------------------------------------------->

                            </div>
                        </div>
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="row">
                            <form action="">
                                <input type="text" class="SearchBar" placeholder="Tên Đối tác">
                                <select class="btn btn-default">
                                    <option value="">Lớp</option>
                                    <option value="">Lớp A</option>
                                    <option value="">Lớp B</option>
                                    <option value="">Lớp C</option>
                                    <option value="">Lớp D</option>
                                </select>
                                <select class="btn btn-default">
                                    <option value="">Vị Trí</option>
                                    <option value="">Programer</option>
                                    <option value="">Developer</option>
                                    <option value="">Tester</option>
                                    <option value="">Leader</option>
                                </select>
                                <input type="date" class="SearchBar" placeholder="Ngày bắt đầu">
                                <select class="btn btn-default">
                                    <option value="">Giới tính</option>
                                    <option value="">Nam</option>
                                    <option value="">Nữ</option>
                                </select>
                                <button class="btn btn-success">Tìm Kiếm</button>

                            </form>

                        </div>
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="fa fa-bar-chart-o fa-fw"></i> Thông tin chi tiết Đối tác
                        <div class="pull-right">
                            <div class="btn-group">
                                <button type="button" class="btn btn-default btn-xs dropdown-toggle"
                                        data-toggle="dropdown">
                                    Actions
                                    <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu pull-right" role="menu">
                                    <li><a href="#">Action</a>
                                    </li>
                                    <li><a href="#">Another action</a>
                                    </li>
                                    <li><a href="#">Something else here</a>
                                    </li>
                                    <li class="divider"></li>
                                    <li><a href="#">Separated link</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover table-striped">
                                        <thead>
                                        <tr>
                                            <th>
                                                <p>
                                                    STT
                                                </p>
                                            </th>
                                            <th><p>Tên đối tác</p></th>
                                            <th><p>
                                                Người đại diện
                                            </p></th>
                                            <th><p>
                                                Số điện thoại
                                            </p></th>
                                            <th>
                                                <p>
                                                    WebSite
                                                </p></th>
                                            <th><p>
                                                Số lượng
                                            </p></th>
                                            <th><p>
                                                Ngôn ngữ
                                            </p></th>
                                            <th><p>
                                                Vị trí
                                            </p></th>
                                            <th><p>
                                                Trạng thái
                                            </p></th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        </tbody>
                                    </table>
                                </div><!-- /.table-responsive -->
                                <p class="btn-add-new">
                                    <i class="fa fa-plus-circle" aria-hidden="true" ></i>
                                </p>
                            </div>
                            <!-- /.col-lg-4 (nested) -->
                            <div class="col-lg-8">
                                <div id="morris-bar-chart"></div>
                            </div>
                            <!-- /.col-lg-8 (nested) -->
                        </div>
                        <!-- /.row -->
                    </div>
                    <!-- /.panel-body -->
                </div><!--Kết thúc bảng chi tiết Thực tập sinh-->
                <!-- /.panel -->

            </div>
            <!-- /.col-lg-8 -->

        </div>
        <!-- /.row -->
    </div>
    <!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->

</body>
</html>
