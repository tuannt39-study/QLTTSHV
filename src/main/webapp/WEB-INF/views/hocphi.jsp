<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="wrapper">

    <div id="page-wrapper">

        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Học Phí</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->

        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="row">
                            <div class="panel-body">
                                <div class="col-lg-12">
                                    <form role="form">
                                        <div class="col-lg-3">
                                            <select class="form-control">
                                                <option value="namhoc" selected>- Năm học -</option>
                                                <option value="2017">2017</option>
                                                <option value="2016">2016</option>
                                                <option value="2015">2015</option>
                                                <option value="2014">2014</option>
                                                <option value="2013">2013</option>
                                            </select>
                                        </div>
                                        <div class="col-lg-3">
                                            <select class="form-control">
                                                <option value="ngonngu" selected>- Ngôn ngữ -</option>
                                                <option value="java">JAVA</option>
                                                <option value="android">ANDROID</option>
                                                <option value="php">PHP</option>
                                                <option value="uxui">UX/UI</option>
                                                <option value="namhoc">TESTER</option>
                                            </select>
                                        </div>
                                        <div class="col-lg-3">
                                            <select class="form-control">
                                                <option value="lophoc" selected>- Lớp học -</option>
                                                <option value="h16jb1">H16JB1</option>
                                                <option value="h16jb2">H16JB2</option>
                                                <option value="h16jb3">H16JB3</option>
                                                <option value="h16jb4">H16JB4</option>
                                                <option value="h16jb5">H16JB5</option>
                                            </select>
                                        </div>
                                    </form>
                                </div>
                                <!-- /.col-lg-12 -->
                            </div>
                            <!-- /.panel-body -->
                            <div class="panel-body">
                                <div class="col-lg-12">
                                    <form role="form">
                                        <div class="col-lg-4">
                                            <div class="form-group input-group">
                                                <span class="input-group-addon">Mã học viên</span>
                                                <input type="text" class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group input-group">
                                                <span class="input-group-addon">Tên học viên</span>
                                                <input type="text" class="form-control">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <!-- /.col-lg-12 -->
                            </div>
                            <!-- /.panel-body -->

                            <div class="panel-body">
                                <div class="col-lg-12">
                                    <div class="form">
                                        <div class="col-lg-12"><label>Học viên nộp học phí dự kiến:</label></div>
                                        <div class="col-lg-3">
                                            <div class="form-group input-group">
                                                <span class="input-group-addon">Từ</span>
                                                <input type="text" class="form-control" id="dpd1">
                                            </div>
                                        </div>
                                        <div class="col-lg-3">
                                            <div class="form-group input-group">
                                                <span class="input-group-addon">đến</span>
                                                <input type="text" class="form-control" id="dpd2">
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <button type="button" class="btn btn-primary btn-circle btn-lg"><i
                                                    class="fa  fa-search "></i></button>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.col-lg-12 -->
                            </div>
                            <!-- /.panel-body -->

                        </div>
                        <!-- /.row -->
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Tìm theo mã lớp học: H16JB1
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <table width="100%" class="table table-striped table-bordered table-hover"
                               id="dataTables-example">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Họ Và Tên</th>
                                <th>Mã Lớp Học</th>
                                <th>Học Bổng</th>
                                <th>Học Phí</th>
                                <th>Sửa</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>1</td>
                                <td>Nguyễn Văn A</td>
                                <td>H16JB1</td>
                                <td>0%</td>
                                <td>
                                    <!-- Button trigger modal -->
                                    <button type="button" class="btn btn-success btn-circle" data-toggle="modal"
                                            data-target="#myModal1" data-placement="bottom" title="Xem chi tiết"><i
                                            class="fa fa-check"></i></button>
                                    <!-- Modal -->
                                    <div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
                                         aria-labelledby="myModalLabel"
                                         aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal"
                                                            aria-hidden="true">&times;</button>
                                                    <h3 class="modal-title" id="myModalLabel">Chi tiết học phí - Nguyễn
                                                        Văn A</h3>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="panel-body">
                                                        <div class="col-lg-12">
                                                            <div class="col-lg-6"><label>Học phí phải nộp: </label>
                                                            </div>
                                                            <div class="col-lg-6"><input style="width:50%" type="text"
                                                                                         class="form-control"
                                                                                         id="disabledInput"
                                                                                         value="10000000"
                                                                                         disabled></div>
                                                        </div>
                                                        <div class="col-lg-12">
                                                            <div class="col-lg-6"><label>Học phí nộp lần 1: </label>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <div class="col-lg-6"><label>Học phí nộp: </label></div>
                                                                <div class="col-lg-6"><input type="text"
                                                                                             style="width:50%"
                                                                                             class="form-control"
                                                                                             id="disabledInput"
                                                                                             value="3000000"
                                                                                             disabled></div>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <div class="col-lg-6"><label>Ngày nộp: </label></div>
                                                                <div class="col-lg-6"><input type="text"
                                                                                             style="width:50%"
                                                                                             class="form-control"
                                                                                             id="disabledInput"
                                                                                             value="01/01/2017"
                                                                                             disabled></div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-12">
                                                            <div class="col-lg-6"><label>Học phí nộp lần 2: </label>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <div class="col-lg-6"><label>Học phí nộp: </label></div>
                                                                <div class="col-lg-6"><input type="text"
                                                                                             style="width:50%"
                                                                                             class="form-control"
                                                                                             id="disabledInput"
                                                                                             value="2000000"
                                                                                             disabled></div>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <div class="col-lg-6"><label>Ngày nộp: </label></div>
                                                                <div class="col-lg-6"><input type="text"
                                                                                             style="width:50%"
                                                                                             class="form-control"
                                                                                             id="disabledInput"
                                                                                             value="08/01/2017"
                                                                                             disabled></div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-12">
                                                            <div class="col-lg-6"><label>Học phí nộp lần 3: </label>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <div class="col-lg-6"><label>Học phí nộp: </label></div>
                                                                <div class="col-lg-6"><input type="text"
                                                                                             style="width:50%"
                                                                                             class="form-control"
                                                                                             id="disabledInput"
                                                                                             value="1000000"
                                                                                             disabled></div>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <div class="col-lg-6"><label>Ngày nộp: </label></div>
                                                                <div class="col-lg-6"><input type="text"
                                                                                             style="width:50%"
                                                                                             class="form-control"
                                                                                             id="disabledInput"
                                                                                             value="18/01/2017"
                                                                                             disabled></div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-12">
                                                            <div class="col-lg-6"><label>Học phí nộp lần 4: </label>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <div class="col-lg-6"><label>Học phí nộp: </label></div>
                                                                <div class="col-lg-6"><input type="text"
                                                                                             style="width:50%"
                                                                                             class="form-control"
                                                                                             id="disabledInput"
                                                                                             value="4000000"
                                                                                             disabled></div>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <div class="col-lg-6"><label>Ngày nộp: </label></div>
                                                                <div class="col-lg-6"><input type="text"
                                                                                             style="width:50%"
                                                                                             class="form-control"
                                                                                             id="disabledInput"
                                                                                             value="22/01/2017"
                                                                                             disabled></div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-12">
                                                            <div class="col-lg-6"><label>Học phí còn thiếu: </label>
                                                            </div>
                                                            <div class="col-lg-6"><input type="text" style="width:50%"
                                                                                         class="form-control"
                                                                                         id="disabledInput"
                                                                                         value="0" disabled></div>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-default"
                                                                data-dismiss="modal">Đóng
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- /.modal-content -->
                                        </div>
                                        <!-- /.modal-dialog -->
                                    </div>
                                    <!-- /.modal -->
                                </td>

                                <td>
                                    <!-- Button trigger modal -->
                                    <button type="button" class="btn btn-primary btn-circle" data-toggle="modal"
                                            data-target="#myModal2" data-placement="bottom" title="Chỉnh sửa"><i
                                            class="fa fa-pencil"></i></button>
                                    <!-- Modal -->
                                    <div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
                                         aria-labelledby="myModalLabel"
                                         aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal"
                                                            aria-hidden="true">&times;</button>
                                                    <h3 class="modal-title" id="myModalLabel">Cập nhật học phí - Nguyễn
                                                        Văn A</h3>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="panel-body">
                                                        <div class="col-lg-12">
                                                            <div class="col-lg-6"><label>Học bổng: </label>
                                                            </div>
                                                            <div class="col-lg-6"><input style="width:50%" type="text"
                                                                                         class="form-control"
                                                                                         value="0%"
                                                            ></div>
                                                        </div>
                                                        <div class="col-lg-12">
                                                            <div class="col-lg-6"><label>Học phí phải nộp: </label>
                                                            </div>
                                                            <div class="col-lg-6"><input style="width:50%" type="text"
                                                                                         class="form-control"
                                                                                         value="10000000"
                                                            ></div>
                                                        </div>
                                                        <div class="col-lg-12">
                                                            <div class="col-lg-6"><label>Học phí nộp lần 1: </label>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <div class="col-lg-6"><label>Học phí nộp: </label></div>
                                                                <div class="col-lg-6"><input type="text"
                                                                                             style="width:50%"
                                                                                             class="form-control"
                                                                                             value="3000000"
                                                                                             ></div>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <div class="col-lg-6"><label>Ngày nộp: </label></div>
                                                                <div class="col-lg-6"><input type="text"
                                                                                             style="width:50%"
                                                                                             class="form-control"
                                                                                             value="01/01/2017"
                                                                                             ></div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-12">
                                                            <div class="col-lg-6"><label>Học phí nộp lần 2: </label>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <div class="col-lg-6"><label>Học phí nộp: </label></div>
                                                                <div class="col-lg-6"><input type="text"
                                                                                             style="width:50%"
                                                                                             class="form-control"
                                                                                             value="2000000"
                                                                                             ></div>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <div class="col-lg-6"><label>Ngày nộp: </label></div>
                                                                <div class="col-lg-6"><input type="text"
                                                                                             style="width:50%"
                                                                                             class="form-control"
                                                                                             value="08/01/2017"
                                                                                             ></div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-12">
                                                            <div class="col-lg-6"><label>Học phí nộp lần 3: </label>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <div class="col-lg-6"><label>Học phí nộp: </label></div>
                                                                <div class="col-lg-6"><input type="text"
                                                                                             style="width:50%"
                                                                                             class="form-control"
                                                                                             value="1000000"
                                                                                             ></div>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <div class="col-lg-6"><label>Ngày nộp: </label></div>
                                                                <div class="col-lg-6"><input type="text"
                                                                                             style="width:50%"
                                                                                             class="form-control"
                                                                                             value="18/01/2017"
                                                                                             ></div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-12">
                                                            <div class="col-lg-6"><label>Học phí nộp lần 4: </label>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <div class="col-lg-6"><label>Học phí nộp: </label></div>
                                                                <div class="col-lg-6"><input type="text"
                                                                                             style="width:50%"
                                                                                             class="form-control"
                                                                                             value="4000000"
                                                                                             ></div>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <div class="col-lg-6"><label>Ngày nộp: </label></div>
                                                                <div class="col-lg-6"><input type="text"
                                                                                             style="width:50%"
                                                                                             class="form-control"
                                                                                             value="22/01/2017"
                                                                                             ></div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-12">
                                                            <div class="col-lg-6"><label>Học phí còn thiếu: </label>
                                                            </div>
                                                            <div class="col-lg-6"><input type="text" style="width:50%"
                                                                                         class="form-control"
                                                                                         id="disabledInput"
                                                                                         value="0"
                                                                                         disabled></div>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-default"
                                                                data-dismiss="modal">Đóng
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- /.modal-content -->
                                        </div>
                                        <!-- /.modal-dialog -->
                                    </div>
                                    <!-- /.modal -->
                                </td>


                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Nguyễn Thị B</td>
                                <td>H16JB1</td>
                                <td>50%</td>
                                <td>
                                    <!-- Button trigger modal -->
                                    <button type="button" class="btn btn-danger btn-circle" data-toggle="modal"
                                            data-target="#myModal3" data-placement="bottom" title="Xem chi tiết"><i
                                            class="fa fa-times"></i></button>
                                    <!-- Modal -->
                                    <div class="modal fade" id="myModal3" tabindex="-1" role="dialog"
                                         aria-labelledby="myModalLabel"
                                         aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal"
                                                            aria-hidden="true">&times;</button>
                                                    <h3 class="modal-title" id="myModalLabel">Chi tiết học phí - Nguyễn
                                                        Thị B</h3>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="panel-body">
                                                        <div class="col-lg-12">
                                                            <div class="col-lg-6"><label>Học phí phải nộp: </label>
                                                            </div>
                                                            <div class="col-lg-6"><input style="width:50%" type="text"
                                                                                         class="form-control"
                                                                                         id="disabledInput"
                                                                                         value="5000000" disabled>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-12">
                                                            <div class="col-lg-6"><label>Học phí nộp lần 1: </label>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <div class="col-lg-6"><label>Học phí nộp: </label></div>
                                                                <div class="col-lg-6"><input type="text"
                                                                                             style="width:50%"
                                                                                             class="form-control"
                                                                                             id="disabledInput"
                                                                                             value="2000000"
                                                                                             disabled></div>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <div class="col-lg-6"><label>Ngày nộp: </label></div>
                                                                <div class="col-lg-6"><input type="text"
                                                                                             style="width:50%"
                                                                                             class="form-control"
                                                                                             id="disabledInput"
                                                                                             value="04/01/2017"
                                                                                             disabled></div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-12">
                                                            <div class="col-lg-6"><label>Học phí nộp lần 2: </label>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <div class="col-lg-6"><label>Học phí nộp: </label></div>
                                                                <div class="col-lg-6"><input type="text"
                                                                                             style="width:50%"
                                                                                             class="form-control"
                                                                                             id="disabledInput"
                                                                                             value="1000000"
                                                                                             disabled></div>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <div class="col-lg-6"><label>Ngày nộp: </label></div>
                                                                <div class="col-lg-6"><input type="text"
                                                                                             style="width:50%"
                                                                                             class="form-control"
                                                                                             id="disabledInput"
                                                                                             value="12/01/2017"
                                                                                             disabled></div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-12">
                                                            <div class="col-lg-6"><label>Ngày nộp học phí dự
                                                                kiến: </label></div>
                                                            <div class="col-lg-6"><input type="text" style="width:50%"
                                                                                         class="form-control"
                                                                                         id="disabledInput"
                                                                                         value="23/01/2017"
                                                                                         disabled></div>
                                                        </div>
                                                        <div class="col-lg-12">
                                                            <div class="col-lg-6"><label>Học phí còn thiếu: </label>
                                                            </div>
                                                            <div class="col-lg-6"><input type="text" style="width:50%"
                                                                                         class="form-control"
                                                                                         id="disabledInput"
                                                                                         value="2000000" disabled>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-default"
                                                                data-dismiss="modal">Đóng
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- /.modal-content -->
                                        </div>
                                        <!-- /.modal-dialog -->
                                    </div>
                                    <!-- /.modal -->
                                </td>

                                <td>
                                    <!-- Button trigger modal -->
                                    <button type="button" class="btn btn-primary btn-circle" data-toggle="modal"
                                            data-target="#myModal4" data-placement="bottom" title="Chỉnh sửa"><i
                                            class="fa fa-pencil"></i></button>
                                    <!-- Modal -->
                                    <div class="modal fade" id="myModal4" tabindex="-1" role="dialog"
                                         aria-labelledby="myModalLabel"
                                         aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal"
                                                            aria-hidden="true">&times;</button>
                                                    <h3 class="modal-title" id="myModalLabel">Cập nhật học phí - Nguyễn
                                                        Thị B</h3>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="panel-body">
                                                        <div class="col-lg-12">
                                                            <div class="col-lg-6"><label>Học bổng: </label>
                                                            </div>
                                                            <div class="col-lg-6"><input style="width:50%" type="text"
                                                                                         class="form-control"
                                                                                         value="50%" >
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-12">
                                                            <div class="col-lg-6"><label>Học phí phải nộp: </label>
                                                            </div>
                                                            <div class="col-lg-6"><input style="width:50%" type="text"
                                                                                         class="form-control"
                                                                                         value="5000000" >
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-12">
                                                            <div class="col-lg-6"><label>Học phí nộp lần 1: </label>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <div class="col-lg-6"><label>Học phí nộp: </label></div>
                                                                <div class="col-lg-6"><input type="text"
                                                                                             style="width:50%"
                                                                                             class="form-control"
                                                                                             value="2000000"
                                                                                             ></div>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <div class="col-lg-6"><label>Ngày nộp: </label></div>
                                                                <div class="col-lg-6"><input type="text"
                                                                                             style="width:50%"
                                                                                             class="form-control"
                                                                                             value="04/01/2017"
                                                                                             ></div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-12">
                                                            <div class="col-lg-6"><label>Học phí nộp lần 2: </label>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <div class="col-lg-6"><label>Học phí nộp: </label></div>
                                                                <div class="col-lg-6"><input type="text"
                                                                                             style="width:50%"
                                                                                             class="form-control"
                                                                                             value="1000000"
                                                                                             ></div>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <div class="col-lg-6"><label>Ngày nộp: </label></div>
                                                                <div class="col-lg-6"><input type="text"
                                                                                             style="width:50%"
                                                                                             class="form-control"
                                                                                             value="12/01/2017"
                                                                                             ></div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-12">
                                                            <div class="col-lg-6"><label>Ngày nộp học phí dự
                                                                kiến: </label></div>
                                                            <div class="col-lg-6"><input type="text" style="width:50%"
                                                                                         class="form-control"
                                                                                         value="23/01/2017"
                                                                                         ></div>
                                                        </div>
                                                        <div class="col-lg-12">
                                                            <div class="col-lg-6"><label>Học phí còn thiếu: </label>
                                                            </div>
                                                            <div class="col-lg-6"><input type="text" style="width:50%"
                                                                                         class="form-control"
                                                                                         id="disabledInput"
                                                                                         value="2000000" disabled>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-default"
                                                                data-dismiss="modal">Đóng
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- /.modal-content -->
                                        </div>
                                        <!-- /.modal-dialog -->
                                    </div>
                                    <!-- /.modal -->
                                </td>


                            </tr>
                            <tr>
                                <td>3</td>
                                <td>Nguyễn Văn C</td>
                                <td>H16JB1</td>
                                <td>0%</td>

                                <td>
                                    <button type="button" class="btn btn-success btn-circle"><i class="fa fa-check"
                                                                                                data-placement="bottom"
                                                                                                title="Xem chi tiết"></i>
                                    </button>
                                </td>


                                <td>
                                    <button type="button" class="btn btn-primary btn-circle"><i class="fa fa-pencil"
                                                                                                data-placement="bottom"
                                                                                                title="Chỉnh sửa"></i>
                                    </button>
                                </td>

                            </tr>
                            <tr>
                                <td>4</td>
                                <td>Nguyễn Văn A</td>
                                <td>H16JB1</td>
                                <td>0%</td>
                                <td>
                                    <button type="button" class="btn btn-success btn-circle"><i class="fa fa-check"
                                                                                                data-placement="bottom"
                                                                                                title="Xem chi tiết"></i>
                                    </button>
                                </td>

                                <td>
                                    <button type="button" class="btn btn-primary btn-circle"><i class="fa fa-pencil"
                                                                                                data-placement="bottom"
                                                                                                title="Chỉnh sửa"></i>
                                    </button>
                                </td>

                            </tr>
                            <tr>
                                <td>5</td>
                                <td>Nguyễn Thị B</td>
                                <td>H16JB1</td>
                                <td>50%</td>
                                <td>
                                    <button type="button" class="btn btn-danger btn-circle"><i class="fa fa-times"
                                                                                               data-placement="bottom"
                                                                                               title="Xem chi tiết"></i>
                                    </button>
                                </td>

                                <td>
                                    <button type="button" class="btn btn-primary btn-circle"><i class="fa fa-pencil"
                                                                                                data-placement="bottom"
                                                                                                title="Chỉnh sửa"></i>
                                    </button>
                                </td>

                            </tr>
                            <tr>
                                <td>6</td>
                                <td>Nguyễn Văn C</td>
                                <td>H16JB1</td>
                                <td>0%</td>
                                <td>
                                    <button type="button" class="btn btn-success btn-circle"><i class="fa fa-check"
                                                                                                data-placement="bottom"
                                                                                                title="Xem chi tiết"></i>
                                    </button>
                                </td>

                                <td>
                                    <button type="button" class="btn btn-primary btn-circle"><i class="fa fa-pencil"
                                                                                                data-placement="bottom"
                                                                                                title="Chỉnh sửa"></i>
                                    </button>
                                </td>

                            </tr>
                            <tr>
                                <td>7</td>
                                <td>Nguyễn Văn A</td>
                                <td>H16JB1</td>
                                <td>0%</td>
                                <td>
                                    <button type="button" class="btn btn-success btn-circle"><i class="fa fa-check"
                                                                                                data-placement="bottom"
                                                                                                title="Xem chi tiết"></i>
                                    </button>
                                </td>

                                <td>
                                    <button type="button" class="btn btn-primary btn-circle"><i class="fa fa-pencil"
                                                                                                data-placement="bottom"
                                                                                                title="Chỉnh sửa"></i>
                                    </button>
                                </td>

                            </tr>
                            <tr>
                                <td>8</td>
                                <td>Nguyễn Thị B</td>
                                <td>H16JB1</td>
                                <td>50%</td>
                                <td>
                                    <button type="button" class="btn btn-danger btn-circle"><i class="fa fa-times"
                                                                                               data-placement="bottom"
                                                                                               title="Xem chi tiết"></i>
                                    </button>
                                </td>

                                <td>
                                    <button type="button" class="btn btn-primary btn-circle"><i class="fa fa-pencil"
                                                                                                data-placement="bottom"
                                                                                                title="Chỉnh sửa"></i>
                                    </button>
                                </td>

                            </tr>
                            <tr>
                                <td>9</td>
                                <td>Nguyễn Văn C</td>
                                <td>H16JB1</td>
                                <td>0%</td>
                                <td>
                                    <button type="button" class="btn btn-success btn-circle"><i class="fa fa-check"
                                                                                                data-placement="bottom"
                                                                                                title="Xem chi tiết"></i>
                                    </button>
                                </td>

                                <td>
                                    <button type="button" class="btn btn-primary btn-circle"><i class="fa fa-pencil"
                                                                                                data-placement="bottom"
                                                                                                title="Chỉnh sửa"></i>
                                    </button>
                                </td>

                            </tr>
                            <tr>
                                <td>10</td>
                                <td>Nguyễn Văn A</td>
                                <td>H16JB1</td>
                                <td>0%</td>
                                <td>
                                    <button type="button" class="btn btn-success btn-circle"><i class="fa fa-check"
                                                                                                data-placement="bottom"
                                                                                                title="Xem chi tiết"></i>
                                    </button>
                                </td>

                                <td>
                                    <button type="button" class="btn btn-primary btn-circle"><i class="fa fa-pencil"
                                                                                                data-placement="bottom"
                                                                                                title="Chỉnh sửa"></i>
                                    </button>
                                </td>

                            </tr>
                            <tr>
                                <td>11</td>
                                <td>Nguyễn Thị B</td>
                                <td>H16JB1</td>
                                <td>50%</td>
                                <td>
                                    <button type="button" class="btn btn-danger btn-circle"><i class="fa fa-times"
                                                                                               data-placement="bottom"
                                                                                               title="Xem chi tiết"></i>
                                    </button>
                                </td>

                                <td>
                                    <button type="button" class="btn btn-primary btn-circle"><i class="fa fa-pencil"
                                                                                                data-placement="bottom"
                                                                                                title="Chỉnh sửa"></i>
                                    </button>
                                </td>

                            </tr>
                            <tr>
                                <td>12</td>
                                <td>Nguyễn Văn C</td>
                                <td>H16JB1</td>
                                <td>0%</td>
                                <td>
                                    <button type="button" class="btn btn-success btn-circle"><i class="fa fa-check"
                                                                                                data-placement="bottom"
                                                                                                title="Xem chi tiết"></i>
                                    </button>
                                </td>

                                <td>
                                    <button type="button" class="btn btn-primary btn-circle"><i class="fa fa-pencil"
                                                                                                data-placement="bottom"
                                                                                                title="Chỉnh sửa"></i>
                                    </button>
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
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->

    </div>
    <!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->