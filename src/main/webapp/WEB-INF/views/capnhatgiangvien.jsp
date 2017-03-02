
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="page-wrapper">
    <div class="row">
        <div class="panel panel-primary" style="margin-top: 1%">
            <div class="panel-heading">
                <h3 class="panel-title">Cập nhật giảng viên</h3>
            </div>
            <div class="panel panel-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="phonenumber">Số điện thoại</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="phonenumber" value="0987654321">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="address">Địa chỉ</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="address" value="Cầu Giấy, Hà Nội">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="email">Email</label>
                        <div class="col-sm-10">
                            <input type="email" class="form-control" id="email" value="nguyenvana@gmail.com">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-2" for="otherjob">Công việc khác</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="otherjob" value="Giảng viên ĐH ABC">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">Trình độ chuyên môn</label>
                        <div class="col-sm-10">
                            <textarea class="form-control">Đã từng giảng dạy tại trung tâm ACBX</textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">Đánh giá</label>
                        <div class="col-sm-10">
                            <textarea class="form-control">Trong quá trình giảng dạy vui vẻ, nhiệt tình...</textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">Lớp giảng dạy</label>
                        <div class="col-sm-6" style="width: 70%">
                            <tr>
                                <td>
                                    <table class="table table-striped table-bordered table-hover">
                                        <thread>
                                            <th>STT</th>
                                            <th>Mã lớp</th>
                                            <th>Ngôn ngữ</th>
                                            <th>Địa điểm</th>
                                            <th>Thời gian</th>
                                        </thread>
                                        <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td><a href="#" style="text-decoration: none">H16JB1</a></td>
                                            <td>Java</td>
                                            <td>Số 210 Lê Trọng Tấn, Thanh Xuân</td>
                                            <td>Thứ 2,4,6 từ 6h30 đến 9h30</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td><a style="text-decoration: none" href="#">H16JB2</a></td>
                                            <td>Java</td>
                                            <td>Số 210 Lê Trọng Tấn, Thanh Xuân</td>
                                            <td>Thứ 3,5,7 từ 6h30 đến 9h30</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                        </div>

                        <div class="col-xs-2"  style="margin-left: -1%;width: 14%;height: 22%;">
                            <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">
                                <i class="glyphicon glyphicon-plus" style="color: #dff0d8"></i>
                            </button>

                            <!-- Modal -->
                            <div class="modal fade" id="myModal" role="dialog" >
                                <div class="modal-dialog">
                                    <!-- Modal content-->
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h4 class="modal-title">Thêm lớp</h4>
                                        </div>
                                        <div class="modal-body" style="height: 50%">
                                            <select multiple class="form-control" style="height: 90%">
                                                <option>PHP1</option>
                                                <option>PHP2</option>
                                                <option>Android1</option>
                                                <option>Android2</option>
                                                <option>Tester1</option>
                                                <option>Tester2</option>
                                                <option>UI/UX1</option>
                                                <option>Ui/UX2</option>
                                            </select>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">OK</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <input type="button" value="OK" class="btn btn-primary" style="margin-left: 40%; width: 10%" id="view">
                </form>
            </div>
        </div>
    </div>

</div>
<script src="../static/js/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../static/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function(){
        $('#view').click(function () {
            window.location.href = '/thongtingiangvien/'+ $('#maGVTG').val();
        });
    });

</script>

