<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <div id="page-wrapper">
        <div class="row">
            <div class="panel panel-primary" style="margin-top: 1%">
                <div class="panel-heading">
                    <h3 class="panel-title">Lớp giảng dạy</h3>
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
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
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
                        <label>Mã giảng viên</label>
                        <input type="text" class="form-control" name="maGV" placeholder="Nhập mã giảng viên">
                    </div>
                    <div class="col-sm-4">
                        <label>Tên giảng viên</label>
                        <input type="text" class="form-control" name="tenGV" placeholder="Nhập tên giảng viên">
                    </div>
                    <div class="col-sm-4">
                        <input type="submit" value="Tìm kiếm" class="btn btn-primary" style="margin: 6.5%">
                    </div>
                </div>
            </div>
            <div class="panel panel-body" style="margin-right: -1.5% ; margin-left: -1.5%">

                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h2 class="panel-title">Danh sách giảng viên</h2>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                <tr>
                                    <th>Số thứ tự</th>
                                    <th>Mã giảng viên</th>
                                    <th>Tên giảng viên</th>
                                    <th>Ngôn ngữ</th>
                                    <th>Trạng thái</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr class="odd gradeX">
                                    <td>1</td>
                                    <td><a href="${pageContext.request.contextPath}/thongtingiangvien">GV01</a></td>
                                    <td>Nguyễn Văn A</td>
                                    <td class="center">Java</td>
                                    <td class="center">Đang hoạt động</td>
                                </tr>
                                <tr class="even gradeC">
                                    <td>2</td>
                                    <td><a href="#">GV02</a></td>
                                    <td>Trần Thị B</td>
                                    <td class="center">Tester</td>
                                    <td class="center">Đang hoạt động</td>
                                </tr>
                                <tr class="odd gradeA">
                                    <td>3</td>
                                    <td><a href="#">GV03</a></td>
                                    <td>Trần Văn C</td>
                                    <td class="center">PHP</td>
                                    <td class="center">Ngưng hoạt động</td>
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

