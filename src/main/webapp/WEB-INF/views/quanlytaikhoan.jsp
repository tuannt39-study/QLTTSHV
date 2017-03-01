<%--
  Created by IntelliJ IDEA.
  User: buibichngoc
  Date: 2/16/2017
  Time: 1:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="head-html.jsp"></jsp:include>
    <title>Title</title>
</head>
<body>
<jsp:include page="menu.jsp"></jsp:include>

<div id="page-wrapper">

    <div class="row">
        <div class="col-lg-12">
            <h3 class="page-header" style="color: #2baae2;">Quản Lý Tài Khoản</h3>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <%--header--%>

    <div class="add-acc">
        <div class="modal-add-acc">
            <!-- Trigger the modal with a button -->
            <button type="button" class="btn btn-add-acc" data-toggle="modal" data-target="#myModal"><i class="glyphicon-plus" style="font-size: larger;"></i></button>
            <!-- Modal -->
            <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title" style="color: #2baae2; text-align: center;">Thêm tài khoản mới</h4>
                        </div>
                        <div class="modal-body">
                            <input class="modal-them-tai-khoan" id="username" type="text" name="ssoId" placeholder="Tài khoản"/><br>
                            <input class="modal-them-tai-khoan" id="password" type="password" name="password" placeholder="Mật khẩu"/><br>
                            <input class="modal-them-tai-khoan" type="hidden" name="${_csrf.parameterName}"
                                   value="${_csrf.token}"/><br>
                            <p>Chọn loại tài khoản cần tạo:</p>
                            <form>
                                <label class="checkbox-inline"><input type="checkbox" value="">Học viên</label>
                                <label class="checkbox-inline"><input type="checkbox" value="">Thực tập sinh</label>
                                <label class="checkbox-inline"><input type="checkbox" value="">Giảng viên</label>
                                <label class="checkbox-inline"><input type="checkbox" value="">Trợ giảng</label>
                                <label class="checkbox-inline"><input type="checkbox" value="">Đối tác</label>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-add-acc" data-dismiss="modal"><i class="glyphicon glyphicon-ok"></i></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--btn-add-accounts--%>

    <div class="list-movie-filter" style="margin-bottom: 10px;">
        <div class="list-movie-filter-main">
            <form id="form-filter" class="form-inline" method="GET" action="filter/">
                <div class="list-movie-filter-item">
                    <label for="filter-sort">Tìm kiếm tên or mã</label>
                    <input type="text" class="form-control" placeholder="Tìm kiếm...">
                </div>

                <div class="list-movie-filter-item">
                    <label for="filter-sort">Loại user</label>
                    <select class="form-control" id="filter-sort" name="sort">
                        <option value="">Tất cả</option>
                        <option value="updatetime">Học viên</option>
                        <option value="posttime1">Thực tập sinh</option>
                        <option value="posttime2">Giảng viên</option>
                        <option value="posttime3">Trợ giảng</option>
                        <option value="posttime4">Đối tác</option>
                    </select>
                </div>
                <div class="list-movie-filter-item">
                    <label for="filter-eptype">Lớp học</label>
                    <select class="form-control" id="filter-eptype" name="eptype">
                        <option value="">Tất cả</option>
                        <option value="single">Android1</option>
                        <option value="serial">Java1</option>
                    </select>
                </div>
                <div class="list-movie-filter-item">
                    <label for="filter-language">Đối tác</label>
                    <select class="form-control" id="filter-language" name="language">
                        <option value="">Tất cả</option>
                        <option value="vietnam">NextTech</option>
                        <option value="illustrate">Minh Quân</option>
                    </select>
                </div>
                <button type="submit" id="btn-movie-filter" class="btn btn-default btn-filter-movie"><span><i class="fa fa-search"></i></span></button>
                <div class="clear"></div>
            </form>
        </div>
    </div>

    <%--searchbar--%>
    <div class="container">
        <table class="table table-bordered">
            <thead class="thead-color">
            <tr>
                <th>STT</th>
                <th>Mã</th>
                <th>Họ tên</th>
                <th>Ngày sinh</th>
                <th>SĐT</th>
                <th>Mail</th>
                <th>Lớp</th>
                <th>Loại tài khoản</th>
                <th style="border-color: #ffffff; background-color: #ffffff;"></th>

            </tr>
            </thead>
            <tbody>
            <tr>
                <td>1</td>
                <td>0303</td>
                <td>Bùi Bích Ngọc</td>
                <td>22/05/1993</td>
                <td>0123456789</td>
                <td>buibichngocat8c@gmail.com</td>
                <td>JavaEE</td>
                <td>Thực tập sinh, Học viên</td>
                <td style="border-color: #ffffff; background-color: #ffffff;">
                    <button class="btn-active-css" id="kichhoat1" style="display:block;" onclick="document.getElementById('huykichhoat1').style.display = 'block'; this.style.display = 'none';">kích hoạt</button>
                    <button class="btn-deactive-css" id="huykichhoat1" style="display:none;" onclick="document.getElementById('kichhoat1').style.display = 'block'; this.style.display = 'none';">hủy kích hoạt</button>
                </td>
            </tr>
            <tr>
                <td>2</td>
                <td>0333</td>
                <td>Nguyễn Văn A</td>
                <td>03/11/1993</td>
                <td>0987654321</td>
                <td>nguyenvana97@gmail.com</td>
                <td>Android3</td>
                <td>Học viên</td>
                <td style="border-color: #ffffff; background-color: #ffffff;">
                    <button class="btn-active-css" id="kichhoat2" style="display:block;" onclick="document.getElementById('huykichhoat2').style.display = 'block'; this.style.display = 'none';">kích hoạt</button>
                    <button class="btn-deactive-css" id="huykichhoat2" style="display:none;" onclick="document.getElementById('kichhoat2').style.display = 'block'; this.style.display = 'none';">hủy kích hoạt</button>
                </td>
            </tr>

            </tbody>
        </table>
    </div>
    <%--danh-sach-tai-khoan--%>
</div>
<%--body-quanly-taikhoan--%>
<!-- jQuery -->
<script src="../static/js/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../static/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="../static/css/metisMenu.min.js"></script>

<!-- Morris Charts JavaScript -->
<script src="../static/js/raphael.min.js"></script>
<script src="../static/js/morris.min.js"></script>
<script src="../static/js/morris-data.js"></script>

<!-- Custom Theme JavaScript -->
<script src="../static/js/sb-admin-2.js"></script>
</body>
</html>
