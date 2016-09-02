<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

<body>
    ${bike.id} - ${bike.name}
    <br/><br/>
    <a href="<c:url value="/bikes"/>">back to list</a>
</body>

</html>