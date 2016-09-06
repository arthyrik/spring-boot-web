<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<form:form method="POST" modelAttribute="bike">
    <table>
        <tr>
            <td><label for="name">Name: </label> </td>
            <td><form:input path="name" id="name"/></td>
        </tr>
    </table>

    <input type="submit" value="add"/>
</form:form>