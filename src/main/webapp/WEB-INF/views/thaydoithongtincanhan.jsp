<%--
  Created by IntelliJ IDEA.
  User: minht
  Date: 3/3/2017
  Time: 8:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="head-html.jsp"></jsp:include>
</head>
<body>
<div id="wrapper">
    <jsp:include page="tiles/layout/default-menu.jsp"></jsp:include>
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header text-center">Thay đổi thông tin cá nhân</h1>
            </div>
            <div class="row col-lg-8 center">
                <!--the block containts the table that will be showed the basic information of class-->
                <!--this will be fix to automatically when turn website to dynamic web-->
                <form action="">
                    <table class="table borderless">
                        <tr>
                            <td>
                                <label for="">
                                    Mã Học Viên
                                </label><br/>
                            </td>
                            <td>
                                <input type="text" class="form-control">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="">
                                    Tên học viên
                                </label><br/>
                            </td>
                            <td>
                                <input type="text" class="form-control">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="">
                                    Ngày Sinh
                                </label><br/>
                            </td>
                            <td>
                                <input type="date" class="form-control">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="">
                                    Số Điện thoại
                                </label><br/>
                            </td>
                            <td>
                                <input type="text" class="form-control">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="">
                                    Giới tính
                                </label><br/>
                            </td>
                            <td>
                                <input type="text" class="form-control">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="">
                                    Địa chỉ
                                </label><br/>
                            </td>
                            <td>
                                <input type="text" class="form-control">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="">
                                    Quê Quán
                                </label><br/>
                            </td>
                            <td>
                                <input type="text" class="form-control">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="">
                                    Trường THPT
                                </label><br/>
                            </td>
                            <td>
                                <input type="text" class="form-control">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="">
                                    Trường Đại Học
                                </label><br/>
                            </td>

                            <td>
                                <input type="text" class="form-control">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="">
                                    Năm Tốt nghiệp
                                </label><br/>
                            </td>
                            <td>
                                <input type="text" class="form-control">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="">
                                    Mật khẩu
                                </label><br/>
                            </td>
                            <td>
                                <input type="password" class="form-control">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="">
                                    Nhập lại mật khẩu
                                </label><br/>
                            </td>
                            <td>
                                <input type="password" class="form-control">
                            </td>
                        </tr>
                    </table>
                    <button class="btn btn-danger" style="float: right">
                        Hủy
                    </button>
                    <button class="btn btn-success" style="float: right">
                        Thay Đổi
                    </button>

                </form>
                <!--this is end of basic information class-->

                <!--this block will contains the popup or the div was be hide-->
                <!--this block will appear when user click on lich hoc-->
                <div class="row">
                    <div id="divLichHoc">
                        <p>
                            Sometime
                        </p>
                    </div>
                </div>

                <!--this is end of "lich hoc"-->
            </div>
        </div>
    </div>
</div>
</body>
<script src="../static/js/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../static/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="../static/css/metisMenu.min.js"></script>

<!-- Morris Charts JavaScript -->
<script src="../static/js/raphael.min.js"></script>
<script src="../static/css/metisMenu.min.js"></script>
<script src="../static/js/morris-data.js"></script>

<!-- Custom Theme JavaScript -->
<script src="../static/js/sb-admin-2.js"></script>
<script type="text/javascript" src="../static/js/BackOffice.js"></script>
<script type="text/javascript">
    CenterBlock("page-wrapper","center");
</script>
</html>
