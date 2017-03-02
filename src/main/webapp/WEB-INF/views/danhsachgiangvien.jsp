<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="page-wrapper">
    <div class="row">
        <div class="panel panel-primary" style="margin-top: 1%">
            <div class="panel-heading">
                <h3 class="panel-title">Tìm kiếm</h3>
            </div>
            <div class="panel-body">
                <div class="col-sm-4">
                    <label>Ngôn ngữ</label>
                    <label>
                        <select class="form-control">
                            <option>-Chọn-</option>
                            <option>Java</option>
                            <option>PHP</option>
                            <option>Android</option>
                            <option>UX/UI</option>
                            <option>Tester</option>
                        </select>
                    </label>
                </div>
                <div class="col-sm-4">
                    <label>Khóa học</label>
                    <label>
                        <select class="form-control">
                            <option>-Chọn-</option>
                            <option>2016</option>
                            <option>2017</option>
                        </select>
                    </label>
                </div>
                <div class="col-sm-4">
                    <label>Trạng thái</label>
                    <label>
                        <select class="form-control">
                            <option>-Chọn-</option>
                            <option>Đang hoạt động</option>
                            <option>Ngừng hoạt động</option>
                        </select>
                    </label>
                </div>
                <div class="col-sm-4">
                    <label>Mã giảng viên - trợ giảng</label>
                    <input type="text" class="form-control" name="maGV" placeholder="Nhập mã giảng viên - trợ giảng">
                </div>
                <div class="col-sm-4">
                    <label>Tên giảng viên - trợ giảng</label>
                    <input type="text" class="form-control" name="tenGV" placeholder="Nhập tên giảng viên - trợ giảng">
                </div>
                <div class="col-sm-4">
                    <button type="button" class="btn btn-info" style="margin-top: 8.5%; margin-left: 20%; width: 30%;">
                        <span class="glyphicon glyphicon-search"></span>
                    </button>
                </div>
            </div>
        </div>
        <div class="panel panel-body" style="margin-right: -1.5% ; margin-left: -1.5%">

            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h2 class="panel-title">Danh sách giảng viên - trợ giảng</h2>
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example" style="text-align: center">
                        <thead>
                        <tr>
                            <th>Số thứ tự</th>
                            <th>Họ tên</th>
                            <th>Vai trò</th>
                            <th>Lớp</th>
                            <th>Trạng thái</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr class="odd gradeX">

                            <td>1</td>
                            <td><a href="/thongtingiangvien/GV01" style="text-decoration: none">Nguyễn Văn A</a></td>
                            <td>Giảng viên</td>
                            <td class="center">H16JB1</td>
                            <td class="center">
                                <span class="glyphicon glyphicon-ok-sign" style="color: #00f700; height: 50%; border: none !important;"></span>
                            </td>

                        </tr>
                        <tr class="even gradeX">
                            <form>
                                <td>2</td>
                                <td><a href="#" style="text-decoration: none">Trần Thị B</a></td>
                                <td>Giảng viên</td>
                                <td class="center">H16T1</td>
                                <td class="center">
                                    <span class="glyphicon glyphicon-ok-sign" style="color: #00f700; height: 50%; border: none !important;"></span>
                                </td>
                            </form>

                        </tr>
                        <tr class="odd gradeX">

                            <td>3</td>
                            <td><a href="#" style="text-decoration: none">Trần Văn C</a></td>
                            <td>Trợ giảng</td>
                            <td class="center">H16JB1</td>
                            <td class="center">
                                <span class="glyphicon glyphicon-remove-sign" style="color: #f70000; height: 50%; border: none !important;"></span>
                            </td>
                        </tr>

                        </tbody>
                    </table>
                    <!-- /.table-responsive -->
                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->

        </div>
    </div>
</div>
<%--<script src="../static/js/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../static/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function(){
        $('#view').click(function () {
            window.location.href = '/thongtingiangvien/'+ $('#maGVTG').val();
        });
        $('#update').click(function () {
            window.location.href = '/capnhatgiangvien/'+ $('#maGVTG').val();
        });
    });

</script>--%>

