<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Test</title>
</head>
<body>

<h1>Test</h1>

<form name="frm" method="post" action="/kah/test/test.do">
	<input type="text" name="searchValue" />
	<input type="submit" value="submit" />
</form>

<c:forEach var="menu" items="${menuList}" varStatus="status">
<p>
	<c:out value="${menu.menuId}" /> | <c:out value="${menu.menuName}" />
</p>
</c:forEach>	

</body>
</html>
