<%@ page import="kands.MadLibZombie" %>
<!doctype html>
<html>
<head>
	<meta name="layout" content="main">
	<g:set var="entityName" value="${message(code: 'madLibZombie.label', default: 'MadLibZombie')}"/>
	<title><g:message code="default.edit.label" args="[entityName]"/></title>
	<style>
	div.fieldcontain label {
		width: 35%;
	}

	input {
		width: 24%;
	}
	</style>
</head>

<body>
<div class="paragraph">
	<h1 class="center page-header">
		Zombie Mad Lib
	</h1>
	%{--<h1 class="not-h1 euphorigenic" style="font-size: 1.4em;">--}%
		%{--Zombie Mad Lib--}%
	%{--</h1>--}%
</div>
%{--<h1 class="center"> </h1>--}%
%{--<div class="paragraph"></div>--}%
%{--<a href="#edit-madLibZombie" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
%{--<div class="nav" role="navigation">--}%
%{--<ul>--}%
%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
%{--<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
%{--</ul>--}%
%{--</div>--}%
<div id="edit-madLibZombie" class="content scaffold-edit" role="main">
%{--<h1><g:message code="default.edit.label" args="[entityName]" /></h1>--}%
%{--<g:if test="${flash.message}">--}%
%{--<div class="message" role="status">${flash.message}</div>--}%
%{--</g:if>--}%
	<g:hasErrors bean="${madLibZombieInstance}">
		<ul class="errors" role="alert">
			<g:eachError bean="${madLibZombieInstance}" var="error">
				<li <g:if
						test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
					error="${error}"/></li>
			</g:eachError>
		</ul>
	</g:hasErrors>
	<g:form method="post">
		<g:hiddenField name="id" value="${madLibZombieInstance?.id}"/>
		<g:hiddenField name="version" value="${madLibZombieInstance?.version}"/>
		<fieldset class="form">
			<g:render template="form"/>
		</fieldset>
		%{--<fieldset class="buttons">--}%
			<g:actionSubmit class="zombieInput euphorigenic multi-col" action="update"
							value="Zombie Time!"/>
			%{--<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--}%
		%{--</fieldset>--}%
	</g:form>
</div>
</body>
</html>
