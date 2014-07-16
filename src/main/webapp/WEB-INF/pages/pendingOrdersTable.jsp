<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html xmlns:c="http://java.sun.com/jsp/jstl/core">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<!-- DataTables CSS -->
<link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.0/css/jquery.dataTables.css">
  
<!-- jQuery -->
<script type="text/javascript" charset="utf8" src="//code.jquery.com/jquery-1.10.2.min.js"></script>
  
<!-- DataTables -->
<script type="text/javascript" charset="utf8" src="//cdn.datatables.net/1.10.0/js/jquery.dataTables.js"></script>
</head>
<body>
<table id="pendingOrderTable" class="display" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>Order ID</th>
                <th>From</th>
                <th>To</th>
                <th>Caller</th>
                <th>Approx Weight</th>
                <th>No of Pieces</th>
                <th>Tracking</th>
            </tr>
        </thead>
        <tfoot>
            <tr>
               <th>Order ID</th>
                <th>From</th>
                <th>To</th>
                <th>Caller</th>
                <th>Approx Weight</th>
                <th>No of Pieces</th>
                <th>Tracking</th>
            </tr>
        </tfoot>
        
        <tbody>
        <c:if test="${pendingOrdersList != null}">
        <c:forEach items="${pendingOrdersList}" var="order"> 
  			<tr>
                <td>${order.id }</td>
                <td>${order.sender }</td>
                <td>${order.receiver }</td>
                <td>${order.caller }</td>
                <td>${order.approxWeight }</td>
                <td>${order.noOfPieces }</td>
                <td><a href="tracking?orderId=${order.id }">Track It!</a></td>
            </tr>
		</c:forEach> 
        </c:if>
          </tbody>
    </table>

<!-- Script to initialize table  -->
<script type='text/javascript'>
// <![CDATA[
$(document).ready( function () {
	    $('#pendingOrderTable').DataTable();
	} );
// ]]>
</script>
</body>
</html>