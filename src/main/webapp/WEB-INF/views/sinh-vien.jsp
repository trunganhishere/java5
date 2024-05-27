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
<body class="container">
<h1>Day la trang sinh vien</h1>
<form action="">
    <input name="ten">
    <button>Search</button>
</form>
<form method="post" action="/sinh-vien/add">
    <div class="mb-3">
        <label for="id" class="form-label">ID</label>
        <input type="number" class="form-control" id="id" name="id" value="${detail.id}">
    </div>
    <div class="mb-3">
        <label for="hoTen" class="form-label">Ho ten</label>
        <input type="text" class="form-control" id="hoTen" name="hoTen" value="${detail.hoTen}">
    </div>
    <div class="mb-3">
        <label for="diaChi" class="form-label">Dia chi</label>
        <input type="text" class="form-control" id="diaChi" name="diaChi" value="${detail.diaChi}">
    </div>
    <label class="form-label">Gioi tinh</label>
    <div class="form-check">
        <input class="form-check-input" type="radio" name="gioiTinh" id="male" value="Male"${detail.gioiTinh=="Male"?"checked":""}>
        <label class="form-check-label" for="flexRadioDefault1">
            Male
        </label>
    </div>
    <div class="form-check">
        <input class="form-check-input" type="radio" name="gioiTinh" id="female" checked value="Female" ${detail.gioiTinh=="Female"?"checked":""}>
        <label class="form-check-label" for="flexRadioDefault2">
            Female
        </label>
    </div>
    <label for="diaChi" class="form-label">Trang thai</label>
    <div class="form-check">
        <input class="form-check-input" type="radio" name="trangThai" id="flexRadioDefault1" value="Active" ${detail.trangThai=="Active"?"checked":""}  >
        <label class="form-check-label" for="flexRadioDefault1">
            Active
        </label>
    </div>
    <div class="form-check">
        <input class="form-check-input" type="radio" name="trangThai" id="flexRadioDefault2" checked value="Inactive" ${detail.trangThai=="Inactive"?"checked":""}>
        <label class="form-check-label" for="flexRadioDefault2">
            Inactive
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
        <th scope="col">Dia chi</th>
        <th scope="col">Gioi tinh</th>
        <th scope="col">Trang thai</th>
        <th scope="col">Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${sv}" var="a" varStatus="i">
    <tr>
        <th scope="row">${i.index+1}</th>
        <td>${a.id}</td>
        <td>${a.hoTen}</td>
        <td>${a.diaChi}</td>
        <td>${a.gioiTinh}</td>
        <td>${a.trangThai}</td>
        <td>
            <a href="/sinh-vien/remove?id=${a.id}" class="btn btn-danger">Xoa</a>
            <a href="/sinh-vien/detail?id=${a.id}" class="btn btn-info">Detail</a>
        </td>
    </tr>
    </c:forEach>
    </tbody>
</table>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
