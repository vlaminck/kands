<%@ page import="kands.Guestbook" %>
<!doctype html>
<html>
<head>
	<meta name="layout" content="main">
	<title>Comments</title>
	<style>
	input {
		width: 90%;
	}

	.odd input[type='submit'] {
		background-color: #F7F7F7;
	}
	.even input[type='submit'] {
		background-color: #ffffff;
	}
	</style>
</head>

<body>
<div class="paragraph">
	<h1 class="center page-header">Guestbook</h1>
</div>
%{--<h1><g:message code="default.list.label" args="[entityName]"/></h1>--}%
%{--<g:if test="${flash.message}">--}%
%{--<div class="message" role="status">${flash.message}</div>--}%
%{--</g:if>--}%
<g:form action="save">
	<table>
		<thead>
		<tr>
			<g:sortableColumn property="name" class="euphorigenic"
												title="${message(code: 'guestbook.name.label', default: 'Name')}"/>
			<g:sortableColumn property="comment" class="euphorigenic"
												title="${message(code: 'guestbook.comment.label', default: 'Comment')}"/>
		</tr>
		</thead>
		<tbody>
		<g:each in="${guestbookInstanceList}" status="i" var="guestbookInstance">
			<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
				<td>${fieldValue(bean: guestbookInstance, field: "name")}</td>
				<td>
					%{--<g:link action="show" id="${guestbookInstance.id}">--}%
					${fieldValue(bean: guestbookInstance, field: "comment")}
					%{--</g:link>--}%
				</td>
			</tr>
		</g:each>
		<tr class="${(guestbookInstanceList.size() % 2) == 0 ? 'even' : 'odd'}">
			<td>
				<g:textField name="name" value="${guestbookInstance?.name}" placeholder="Your Name"/>
			</td>
			<td>
				<g:textArea name="comment" cols="40" rows="5" maxlength="2000" value="${guestbookInstance?.comment}"
										placeholder="Comment"/>
			</td>
		</tr>
		<tr class="noHoverChange ${(guestbookInstanceList.size() % 2) == 0 ? 'odd' : 'even'}">
			%{--<td>--}%
			%{--<g:textField name="name" value="${guestbookInstance?.name}"/>--}%
			%{--</td>--}%
			<td colspan="2">
				<g:submitButton name="create" class="zombieInput euphorigenic multi-col"
												value="Post Comment"/>
			</td>
		</tr>
		</tbody>
	</table>
</g:form>

%{--<div class="pagination">--}%
%{--<g:paginate total="${guestbookInstanceTotal}"/>--}%
%{--</div>--}%
</body>
</html>
