<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="language"
	value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}"
	scope="session" />
<fmt:setLocale value='<%= request.getParameter("lang") %>' />
<fmt:setBundle basename="com.lang.text" />


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html lang="${language}">
<head>
<title>JSP/JSTL i18n demo</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>

	<h1>
		<fmt:message key="login.h1.msg" />
	</h1>
	<hr />
	<form action=".">
		<fmt:message key="login.h1.msg2" /> :  <select name="lang">
			<option value="hi_IN">HINDI</option>
			<option value="en_US">ENGLISH</option>
			<option value="it_CH">ITALIAN</option>
		</select> <br />
		<input type="submit" value="Submit" />
	</form>

</body>
</html>