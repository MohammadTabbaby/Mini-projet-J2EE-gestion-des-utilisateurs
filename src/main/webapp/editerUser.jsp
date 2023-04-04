<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Editer Utilisateur</title>
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
    <div class="card text-bg-warning mb-3" style="width: 30rem;">
        <div class="card-header">
            Modification des données d'utilisateur
        </div>
        <div class="card-body">
            <form action="update.do" method="post">
                <div class="mb-3" hidden="hidden">
                    <label class="form-label">ID :</label>
                    <input type="text" name="id" class="form-control" value="${user.id}">
                </div>
                <div class="mb-3">
                    <label class="form-label">Nom :</label>
                    <input type="text" name="nom" class="form-control" value="${user.nom}">
                </div>
                <div class="mb-3">
                    <label class="form-label">Prenom :</label>
                    <input type="text" name="prenom" class="form-control" value="${user.prenom}">
                </div>
                <div class="mb-3">
                    <label class="form-label">Age :</label>
                    <input type="text" name="age" class="form-control" value="${user.age}">
                </div>
                <div class="mb-3">
                    <label class="form-label">Email :</label>
                    <input type="text" name="email" class="form-control" value="${user.email}">
                </div>
                <div class="mb-3">
                    <label class="form-label">Telephone :</label>
                    <input type="text" name="telephone" class="form-control" value="${user.telephone}">
                </div>
                <div style="text-align: center;">
                    <button type="submit" class="btn btn-primary"> Modifier</button>
                </div>

            </form>
        </div>
    </div>
</div>
</body>
</html>
