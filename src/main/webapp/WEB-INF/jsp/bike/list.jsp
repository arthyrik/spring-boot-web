<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

<body>
    <ul>
        <c:forEach var="bike" items="${bikes}">
            <li><a href="<c:url value="/bikes/${bike.id}"/>">${bike.name}</a></li>
        </c:forEach>
    </ul>
</body>

</html>