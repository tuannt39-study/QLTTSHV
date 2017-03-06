<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<html>
<head>
    <title><tiles:insertAttribute name="title"></tiles:insertAttribute></title>
    <tiles:insertAttribute name="header"></tiles:insertAttribute>
</head>
<body>
    <div id="wrapper">
        <tiles:insertAttribute name="menu"></tiles:insertAttribute>

            <tiles:insertAttribute name="body"></tiles:insertAttribute>

    </div>
</body>
<script src="../static/js/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../static/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="../static/js/metisMenu.min.js"></script>

<!-- DataTables JavaScript -->
<script src="../static/js/jquery.dataTables.min.js"></script>
<script src="../static/js/dataTables.bootstrap.min.js"></script>
<script src="../static/js/dataTables.responsive.js"></script>
<script src="../static/js/bootstrap-datepicker.js"></script>

<!-- Custom Theme JavaScript -->
<script src="../static/js/sb-admin-2.min.js"></script>

<script>
    $(document).ready(function () {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
</script>

<script>
    var nowTemp = new Date();
    var now = new Date(nowTemp.getFullYear(), nowTemp.getMonth(), nowTemp.getDate(), 0, 0, 0, 0);

    var checkin = $('#dpd1').datepicker({
        onRender: function (date) {
            return date.valueOf() < now.valueOf() ? 'disabled' : '';
        }
    }).on('changeDate', function (ev) {
        if (ev.date.valueOf() > checkout.date.valueOf()) {
            var newDate = new Date(ev.date)
            newDate.setDate(newDate.getDate() + 1);
            checkout.setValue(newDate);
        }
        checkin.hide();
        $('#dpd2')[0].focus();
    }).data('datepicker');
    var checkout = $('#dpd2').datepicker({
        onRender: function (date) {
            return date.valueOf() <= checkin.date.valueOf() ? 'disabled' : '';
        }
    }).on('changeDate', function (ev) {
        checkout.hide();
    }).data('datepicker');
</script>
</html>
