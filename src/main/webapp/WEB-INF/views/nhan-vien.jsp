<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 11/05/2024
  Time: 2:28 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<h1>Day la trang nhan vien</h1>
<form method="post" action="/nhan-vien/add">
    <div class="mb-3">
        <label for="id" class="form-label">ID</label>
        <input type="number" class="form-control" id="id" name="id">
    </div>
    <div class="mb-3">
        <label for="hoTen" class="form-label">Ho ten</label>
        <input type="text" class="form-control" id="hoTen" name="ten">
    </div>
    <div class="mb-3">
        <label for="tuoi" class="form-label">Tuoi</label>
        <input type="number" class="form-control" id="tuoi" name="tuoi">
    </div>
    <div class="mb-3">
        <label for="diaChi" class="form-label">Dia chi</label>
        <input type="text" class="form-control" id="diaChi" name="diaChi">
    </div>
    <label class="form-label">Gioi tinh</label>
    <div class="form-check">
        <input class="form-check-input" type="radio" name="gioiTinh" id="flexRadioDefault1" value="Nam">
        <label class="form-check-label" for="flexRadioDefault1">
            Nam
        </label>
    </div>
    <div class="form-check">
        <input class="form-check-input" type="radio" name="gioiTinh" id="flexRadioDefault2" checked value="Nu">
        <label class="form-check-label" for="flexRadioDefault2">
            Nu
        </label>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>
<table class="table">
    <thead>
    <tr>
        <th scope="col">STT</th>
        <th scope="col">ID</th>
        <th scope="col">Họ tên</th>
        <th scope="col">Tuoi</th>
        <th scope="col">Dia chi</th>
        <th scope="col">Gioi tinh</th>
        <th scope="col">Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${sv}" var="a" varStatus="i">
        <tr>
            <th scope="row">${i.index+1}</th>
            <td>${a.id}</td>
            <td>${a.ten}</td>
            <td>${a.tuoi}</td>
            <td>${a.diaChi}</td>
            <td>${a.gioiTinh}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
