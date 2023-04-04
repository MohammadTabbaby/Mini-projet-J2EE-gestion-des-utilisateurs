<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--@elvariable id="model" type="web.UserModel"--%>
<html>
<head>
    <title>Title</title>
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
    <div class="card text-bg-success" style="width: 30rem;">
        <div class="card-header">
            Ajouter des Utilisateurs
        </div>
<div class="card-body">
    <form action="save.do" method="post" >
        <div class="mb-3">
            <label class="form-label">Nom :</label>
            <input type="text" name="nom" class="form-control">
        </div>
        <div class="mb-3">
            <label class="form-label">Prenom :</label>
            <input type="text" name="prenom" class="form-control">
        </div>
        <div class="mb-3">
            <label class="form-label">Age :</label>
            <input type="text" name="age" class="form-control">
        </div>
        <div class="mb-3">
            <label class="form-label">Email :</label>
            <input type="text" name="email" class="form-control">
        </div>
        <div class="mb-3">
            <label class="form-label">Telephone :</label>
            <input type="text" name="telephone" class="form-control">
        </div>
        <div style="text-align: center;">
            <button type="submit" class="btn btn-primary" >Ajouter</button>
        </div>
    </form>
</div>
    </div>
</div>
</body>
</html>