<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--@elvariable id="model" type="web.UserModel"--%>

<html>
<head>
    <title>Confirmation</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css">

    <!-- Bootstrap JS -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>


</head>

<body>
<%@include file="header.jsp" %>
<p></p>

<div class="container" style="display: flex;justify-content: center;align-items: center;">
    <div class="card text-bg-info mb-3" style="width: 30rem;">
        <div class="card-header">
            La modification a été effectuée avec success
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
        </div>
      <br><br>
    </div>
</div>
</body>
</html>