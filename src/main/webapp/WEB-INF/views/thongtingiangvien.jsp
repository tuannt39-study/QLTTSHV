<%--
  Created by IntelliJ IDEA.
  User: quang
  Date: 2/14/2017
  Time: 4:10 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="page-wrapper">
    <div class="row">
        <div class="panel panel-primary" style="margin-top: 15px">
            <div class="panel-heading" >
                <h3 class="panel-title">Thông tin giảng viên</h3>
            </div>
            <div class="panel-body">
                <table class="table table-user-information">
                    <tbody>
                    <tr>
                        <td>Họ tên</td>
                        <td>Nguyễn Văn A</td>
                    </tr>
                    <tr>
                        <td>Mã GV</td>
                        <td id="maGVTG">GV01</td>
                    </tr>
                    <tr>
                        <td>Số điện thoại</td>
                        <td>0987654321</td>
                    </tr>
                    <tr>
                        <td>Địa chỉ</td>
                        <td>Cầu Giấy, Hà Nội</td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td>nguyenvana@gmail.com</td>
                    </tr>
                    <tr>
                        <td>Công việc khác</td>
                        <td>Giảng viên tại ĐH ABC</td>
                    </tr>
                    <tr>
                        <td>Trình độ chuyên môn</td>
                        <td>Đã từng giảng dạy tại trung tâm ACBX</td>
                    </tr>
                    <tr>
                        <td>Đánh giá</td>
                        <td>Trong quá trình giảng dạy vui vẻ, nhiệt tình...</td>
                    </tr>
                    <tr>
                        <td>Trạng thái</td>
                        <td class="center">Đang hoạt động</td>
                    </tr>
                    <tr>
                        <td>Lớp giảng dạy</td>
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
                    </tbody>
                </table>
                <a href="#"class="btn btn-primary" id="update">
                    <span><i class="glyphicon glyphicon-edit" ></i></span>
                </a>
            </div>
        </div>
        <form>

        </form>
    </div>
</div>
<script src="../static/js/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../static/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function(){
        $('#update').click(function () {
            window.location.href = '/capnhatgiangvien/GV01';
        });
    });

</script>