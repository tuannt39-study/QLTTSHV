<%--
  Created by IntelliJ IDEA.
  User: buibichngoc
  Date: 2/3/2017
  Time: 3:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


    <div id="page-wrapper">

        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header" style="color: #2baae2;">Thông Tin Cá Nhân</h3>
            </div>
            <!--profile -->

            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad">

                <div class="panel panel-info">
                    <div class="panel-heading">
                        <h3 class="panel-title">Bùi Bích Ngọc</h3>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-3 col-lg-3 " align="center">
                                <img alt="User Pic"
                                     src="http://babyinfoforyou.com/wp-content/uploads/2014/10/avatar-300x300.png"
                                     class="img-circle img-responsive">
                            </div>

                            <div class=" col-md-9 col-lg-9 ">
                                <table class="table table-user-information">
                                    <tbody>
                                    <tr>
                                        <td>Chức vụ:</td>
                                        <td>Lập trình viên JAVA</td>
                                    </tr>
                                    <tr>
                                        <td>Ngày bắt đầu:</td>
                                        <td>1/12/2016</td>
                                    </tr>
                                    <tr>
                                        <td>Ngày sinh:</td>
                                        <td>22/05/1993</td>
                                    </tr>

                                    <tr>
                                    <tr>
                                        <td>Giới tính:</td>
                                        <td>Female</td>
                                    </tr>
                                    <tr>
                                        <td>Địa chỉ:</td>
                                        <td>Van Quan, Ha Dong, Ha Noi</td>
                                    </tr>
                                    <tr>
                                        <td>Email:</td>
                                        <td><a href="mailto:info@support.com">buibichngocat8c@gmail.com</a></td>
                                    </tr>
                                    <td>Số điện thoại:</td>
                                    <td>123-4567-890(Landline)<br><br>555-555-555(Mobile)
                                    </td>

                                    </tr>

                                    </tbody>
                                </table>

                                <a href="#" class="btn btn-primary">My CV</a>
                            </div>
                        </div>
                    </div>
                    <div class="panel-footer">
                        <span class="pull-right">
                            <%--<a href="edit.html" data-original-title="Edit this user" data-toggle="tooltip" type="button" class="btn btn-sm btn-warning"><i class="glyphicon glyphicon-edit"></i></a>--%>
                            <button type="button"
                                    class="btn btn-sm btn-warning"
                                    data-toggle="modal"
                                    data-target="#myModal">
                                    <i class="glyphicon glyphicon-edit"></i>
                            </button>
                            <!-- Modal -->
                            <div class="modal fade" id="myModal" role="dialog">
                                <div class="modal-dialog">
                                    <!-- Modal content-->
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h4 class="modal-title">Cập nhật thông tin cá nhân</h4>
                                        </div>
                                        <div class="modal-body">
                                            <div class="panel panel-info">
                                                <div class="panel-heading"><h3 class="panel-title">Bùi Bích Ngọc</h3></div>
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-3 col-lg-3 " align="center">
                                                            <img alt="User Pic" src="http://babyinfoforyou.com/wp-content/uploads/2014/10/avatar-300x300.png" class="img-circle img-responsive">
                                                        </div>
                                                        <div class=" col-md-9 col-lg-9 ">
                                                            <table class="table table-user-information">
                                                                <tbody>
                                                                <tr>
                                                                    <td>Họ và tên:</td>
                                                                    <td><input type='text' value='Nhập tên'/></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Ngày sinh:</td>
                                                                    <td><input type='text' value='22/05/1993'/></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Giới tính:</td>
                                                                    <td><select class="form-control">
                                                                            <option>Chọn</option>
                                                                            <option>Nam</option>
                                                                            <option>Nữ</option>
                                                                            <option>Khác</option>
                                                                        </select>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Địa chỉ:</td>
                                                                    <td><input type='text' value='Văn Quán, Hà Đông, Hà Nội'/></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Email:</td>
                                                                    <td><input type='text' value='abc@gmail.com'/></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Số điện thoại(Mobile):</td>
                                                                    <td><input type='text' value='0123456789'/></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Nơi học tập/công tác:</td>
                                                                    <td><input type='text' value='Học viện kỹ thuật mật mã'/></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Chức vụ nơi học tập/công tác:</td>
                                                                    <td><input type='text' value='Sinh viên'/></td>
                                                                </tr>
                                                                </tbody>
                                                            </table>
                                                            <%--<a href="#" class="btn btn-primary">My CV</a>--%>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-add-acc"
                                                    data-dismiss="modal"><i class="glyphicon glyphicon-ok"></i></button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </span>

                    </div>

                </div>
            </div>


        </div>
    </div>
    <!-- /#page-wrapper -->


<!-- jQuery -->
<script src="../static/js/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../static/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="../static/js/metisMenu.min.js"></script>

<!-- Flot Charts JavaScript -->
<%--<script src="../static/js/excanvas.min.js"></script>
<script src="../static/js/jquery.flot.js"></script>
<script src="../static/js/jquery.flot.pie.js"></script>
<script src="../static/js/jquery.flot.resize.js"></script>
<script src="../static/js/jquery.flot.time.js"></script>
<script src="../static/js/jquery.flot.tooltip.min.js"></script>
<script src="../static/js/flot-data.js"></script>--%>

<!-- Custom Theme JavaScript -->
<script src="../static/js/sb-admin-2.js"></script>

</body>

</html>

