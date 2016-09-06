<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

<head>
    <link href="<c:url value="/css/main.css"/>" rel="stylesheet">
    <script src="<c:url value="/js/main.js"/>"></script>
</head>

<body>
    <ul>
        <c:forEach var="bike" items="${bikes}">
            <li><a href="<c:url value="/bikes/${bike.id}"/>">${bike.name}</a></li>
        </c:forEach>

        <img src="<c:url value="/images/cat.jpg" />" />
    </ul>
</body>

</html>