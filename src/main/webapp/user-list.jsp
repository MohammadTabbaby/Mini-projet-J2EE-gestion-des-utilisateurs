<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--@elvariable id="model" type="web.UserModel"--%>
<html>
<head>
    <title>Gestion Utilisateurs</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    <!-- Bootstrap JS -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

</head>
<body>
<%@include file="header.jsp" %>
<p></p>
<div class="container">
    <div class="card text-bg-dark mb-3">
        <div class="card-header">
            <br>
            Recherche des Utilisateurs
            <form action="chercher.do" method="get" style="position:relative; float:right; float-wrap:wrap; ">
                <div class="row mb-3">
                    <label for="inputEmail3" class="col-3 col-form-label">Mot Clé :</label>
                    <div class="col-6">
                        <input type="text" name="motCle" class="form-control" id="inputEmail3" value="${model.motCle}">
                    </div>
                    <div class="col-3">
                        <button type="submit" class="btn btn-primary">Chercher</button>
                    </div>
                </div>
            </form>
        </div>
        <div class="card-body">
            <table class="table table-dark">
                <tr>
                    <th>ID</th>
                    <th>Nom</th>
                    <th>Prenom</th>
                    <th>Age</th>
                    <th>Email</th>
                    <th>Telephone</th>
                    <th></th>
                    <th></th>
                </tr>
                <tr>
                    <c:forEach items="${model.users}" var="u">
                <tr>
                    <td>${u.id}</td>
                    <td>${u.nom}</td>
                    <td>${u.prenom}</td>
                    <td>${u.age}</td>
                    <td>${u.email}</td>
                    <td>${u.telephone}</td>
                    <td>
                        <a class="fas fa-pen" href="editer.do?id=${u.id}" style="text-decoration: none;"></a>
                    </td>
                    <td>
                        <a class="fas fa-trash" onclick="return confirm ('Etes-vous sur ?')"
                           href="supprimer.do?id=${u.id}" style="text-decoration: none;"></a>
                    </td>
                </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
</body>
</html>