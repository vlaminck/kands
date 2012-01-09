
<%@ page import="kands.MadLibZombie" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'madLibZombie.label', default: 'MadLibZombie')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-madLibZombie" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-madLibZombie" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="adverb" title="${message(code: 'madLibZombie.adverb.label', default: 'Adverb')}" />
					
						<g:sortableColumn property="bodyPart1" title="${message(code: 'madLibZombie.bodyPart1.label', default: 'Body Part1')}" />
					
						<g:sortableColumn property="bodyPart2" title="${message(code: 'madLibZombie.bodyPart2.label', default: 'Body Part2')}" />
					
						<g:sortableColumn property="bodyPart3" title="${message(code: 'madLibZombie.bodyPart3.label', default: 'Body Part3')}" />
					
						<g:sortableColumn property="exclamation1" title="${message(code: 'madLibZombie.exclamation1.label', default: 'Exclamation1')}" />
					
						<g:sortableColumn property="exclamation2" title="${message(code: 'madLibZombie.exclamation2.label', default: 'Exclamation2')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${madLibZombieInstanceList}" status="i" var="madLibZombieInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${madLibZombieInstance.id}">${fieldValue(bean: madLibZombieInstance, field: "adverb")}</g:link></td>
					
						<td>${fieldValue(bean: madLibZombieInstance, field: "bodyPart1")}</td>
					
						<td>${fieldValue(bean: madLibZombieInstance, field: "bodyPart2")}</td>
					
						<td>${fieldValue(bean: madLibZombieInstance, field: "bodyPart3")}</td>
					
						<td>${fieldValue(bean: madLibZombieInstance, field: "exclamation1")}</td>
					
						<td>${fieldValue(bean: madLibZombieInstance, field: "exclamation2")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${madLibZombieInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
