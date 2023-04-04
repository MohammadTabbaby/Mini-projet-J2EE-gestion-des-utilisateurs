<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--@elvariable id="model" type="web.UserModel"--%>

<html>
<head>
    <title>Confirmation</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css">
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</head>

<body>
<%@include file="header.jsp" %>
<p></p>

<div class="container" style="display: flex;justify-content: center;align-items: center;">
    <div class="card text-white bg-primary mb-3" style="width: 30rem;">
        <div class="card-header">
            L'ajoute a été effectuée avec success
        </div>
        <div class="card-body">
            <div class="md-3">
                <label class="form-label">ID :</label>
                <input type="text" name="id" class="form-control" value="${user.id}" readonly>
            </div>
            <div class="md-3">
                <label class="form-label">Nom :</label>
                <input type="text" name="nom" class="form-control" value="${user.nom}" readonly>
            </div>
            <div class="md-3">
                <label class="form-label">Prenom :</label>
                <input type="text" name="prenom" class="form-control" value="${user.prenom}" readonly>
            </div>
            <div class="md-3">
                <label class="form-label">Age :</label>
                <input type="text" name="age" class="form-control" value="${user.age}" readonly>
            </div>
            <div class="md-3">
                <label class="form-label">Email :</label>
                <input type="text" name="email" class="form-control" value="${user.email}" readonly>
            </div>
            <div class="md-3">
                <label class="form-label">Telephone :</label>
                <input type="text" name="telephone" class="form-control" value="${user.telephone}" readonly>
            </div>
            <br><br>
        </div>
    </div>
</div>
</body>
</html>
