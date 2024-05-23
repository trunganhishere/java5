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

<form method="post" action="/sinh-vien/update">
    <div class="mb-3">
        <label for="id" class="form-label">ID</label>
        <input type="number" class="form-control" id="id" name="id" value="${detail.id}" readonly>
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
        <input class="form-check-input" type="radio" name="gioiTinh" id="nam" value="Nam" ${detail.gioiTinh=="Nam"?"checked":""}>
        <label class="form-check-label" for="flexRadioDefault1">
            Nam
        </label>
    </div>
    <div class="form-check">
        <input class="form-check-input" type="radio" name="gioiTinh" id="nu" value="Nu" ${detail.gioiTinh=="Nu"?"checked":""}>
        <label class="form-check-label" for="flexRadioDefault2">
            Nu
        </label>
    </div>
    <label for="diaChi" class="form-label">Trang thai</label>
    <div class="form-check">
        <input class="form-check-input" type="radio" name="trangThai" id="flexRadioDefault1" value="Hoat dong" ${detail.trangThai=="Hoat dong"?"checked":""}  >
        <label class="form-check-label" for="flexRadioDefault1">
            Hoat dong
        </label>
    </div>
    <div class="form-check">
        <input class="form-check-input" type="radio" name="trangThai" id="flexRadioDefault2" value="Ngung hoat dong" ${detail.trangThai=="Ngung hoat dong"?"checked":""}>
        <label class="form-check-label" for="flexRadioDefault2">
            Ngung hoat dong
        </label>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
