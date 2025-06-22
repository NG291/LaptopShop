<html lang="en">
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Users Detail Delete:${user.id}</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link rel="stylesheet" href="/css/demo.css">
</head>
<body>
<div class="container mt-5">
    <div class="row">
        <div class="col-12 mx-auto">
            <div class="d-flex justify-content-between">
                <h3> User Detail Delete: Information=${user.fullName}</h3>
            </div>
            <hr/>
            <div class="card" style="width: 60%">
                <div class="card-header">
                    User Information Delete
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item" disabled="true"> ID: ${user.id}</li>
                    <li class="list-group-item"> Email: ${user.email}</li>
                    <li class="list-group-item"> Password: ${user.password}</li>
                    <li class="list-group-item"> Phone Number:${user.phoneNumber}</li>
                    <li class="list-group-item"> Full Name: ${user.fullName}</li>
                    <li class="list-group-item"> Address: ${user.address}</li>
                </ul>
                <form action="/admin/user/delete" method="post">
                    <input type="hidden" name="id" value="${user.id}"/>
                <button class="btn btn-danger">DELETE</button>
                </form>
            </div>
        </div>
    </div>
</div>
</body>