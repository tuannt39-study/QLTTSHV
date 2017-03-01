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
            <div class="panel panel-primary" style="margin-top: 1%">
                <div class="panel-heading">
                    <h3 class="panel-title">Thông tin giảng viên</h3>
                </div>
            </div>
            <form>
                <table class="table table-user-information">
                    <tbody>
                    <tr>
                        <td>Họ tên</td>
                        <td>Nguyễn Văn A</td>
                    </tr>
                    <tr>
                        <td>Mã GV</td>
                        <td>GV01</td>
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
                        <td>Lớp giảng dạy</td>
                        <td>
                            <select multiple class="form-control">
                                <option><a href="#">Java01</a></option>
                                <option><a href="#">Java02</a></option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Trạng thái</td>
                        <td>Đang hoạt động</td>
                    </tr>
                    </tbody>
                </table>
                <a href="/capnhatgiangvien" class="btn btn-primary">Cập nhật</a>
            </form>


        </div>
    </div>
