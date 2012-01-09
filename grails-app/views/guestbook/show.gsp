
<%@ page import="kands.Guestbook" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'guestbook.label', default: 'Guestbook')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list guestbook">
			
				<g:if test="${guestbookInstance?.comment}">
				<li class="fieldcontain">
					<span id="comment-label" class="property-label"><g:message code="guestbook.comment.label" default="Comment" /></span>
					
						<span class="property-value" aria-labelledby="comment-label"><g:fieldValue bean="${guestbookInstance}" field="comment"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${guestbookInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="guestbook.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${guestbookInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
			</ol>
		</div>
	</body>
</html>
