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

<!-- Custom Theme JavaScript -->
<script src="../static/js/sb-admin-2.js"></script>

<!-- Page-Level Demo Scripts - Tables - Use for reference -->
<script>
    $(document).ready(function () {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
</script>
</html>
