
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<spring:url value="/resources/assets/jquery/jquery-3.1.1.min.js" var="jqueryJs" />
<script src="${jqueryJs}"></script>

<spring:url value="/resources/assets/bootstrap/js/bootstrap.min.js" var="bootstrapJs" />
<script src="${bootstrapJs}"></script>

<script src='https://www.google.com/recaptcha/api.js'></script>

<spring:url value="/resources/assets/jquery/jquery.validate.min.js" var="jqueryValidateJs" />
<script src="${jqueryValidateJs}"></script>

<spring:url value="/resources/assets/jquery/jquery.formatter.min.js" var="jqueryFormatterJs" />
<script src="${jqueryFormatterJs}"></script>

<spring:url value="/resources/js/barraProgreso.js" var="barraProgresoJs" />
<script src="${barraProgresoJs}"></script>
