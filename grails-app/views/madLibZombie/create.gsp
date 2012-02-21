<%@ page import="kands.MadLibZombie" %>
<!doctype html>
<html>
<head>
	<meta name="layout" content="main">
	<g:set var="entityName" value="${message(code: 'madLibZombie.label', default: 'MadLibZombie')}"/>
	<title><g:message code="default.create.label" args="[entityName]"/></title>
	<style>
	div.fieldcontain label {
		width: 30%;
	}

	input {
		width: 34%;
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


<div class="paragraph">
	Okay, okay, we know, zombies are everywhere. But do you know why they’re everywhere? Because they’re awesome! Don’t believe us? Do the mad lib and see for yourself :)
	<br/>
	<br/>
	With this mad lib, the more creative, specific, and obscure the word or phrase, the better. Click Edit to change one of your word choices after you’ve submitted.
	<br/>
	<br/>
	Oh, and this is definitely not suitable for children :)
</div>
%{--<br/>--}%
%{--<br/>--}%
%{--<h1 class="center"> </h1>--}%
%{--<div class="paragraph"></div>--}%
%{--<a href="#create-madLibZombie" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
<div id="create-madLibZombie" class="content scaffold-create" role="main">
%{--<h1><g:message code="default.create.label" args="[entityName]" /></h1>--}%
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
	<g:form action="save">
		<fieldset class="form">
			<g:render template="form"/>
		</fieldset>
	%{--<fieldset class="buttons">--}%
		<g:submitButton name="create" class="euphorigenic zombieInput multi-col" value="Zombie Time!"/>
	%{--</fieldset>--}%
	</g:form>
</div>
</body>
</html>
