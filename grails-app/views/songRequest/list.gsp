<%@ page import="kands.SongRequest" %>
<!doctype html>
<html>
<head>
	<meta name="layout" content="main">
	<g:set var="entityName" value="${message(code: 'songRequest.label', default: 'SongRequest')}"/>
	<title><g:message code="default.list.label" args="[entityName]"/></title>
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
	<h1 class="center page-header">Song Request</h1>
	<br/>
	Have a favorite song you love to dance to? Request it!&nbsp;&nbsp;Please remember that we have veto power and are not afraid to use it :)
</div>
%{--<a href="#list-songRequest" class="skip" tabindex="-1">--}%
%{--<g:message code="default.link.skip.label" default="Skip to content&hellip;"/>--}%
%{--</a>--}%

%{--<div class="nav" role="navigation">--}%
%{--<ul>--}%
%{--<li>--}%
%{--<a class="home" href="${createLink(uri: '/')}">--}%
%{--<g:message code="default.home.label"/>--}%
%{--</a>--}%
%{--</li>--}%
%{--<li>--}%
%{--<g:link class="create" action="create">--}%
%{--<g:message code="default.new.label" args="[entityName]"/>--}%
%{--</g:link>--}%
%{--</li>--}%
%{--</ul>--}%
%{--</div>--}%

<div id="list-songRequest" class="content scaffold-list" role="main">
%{--<h1><g:message code="default.list.label" args="[entityName]"/></h1>--}%
%{--<g:if test="${flash.message}">--}%
%{--<div class="message" role="status">${flash.message}</div>--}%
%{--</g:if>--}%
	<g:form action="save">
		<table>
			<thead>
			<tr>
				<g:sortableColumn property="name" class="euphorigenic"
													title="${message(code:'songRequest.name.label', default: 'Your Name')}"/>
				<g:sortableColumn property="artist" class="euphorigenic"
													title="${message(code:'songRequest.artist.label', default: 'Artist')}"/>
				<g:sortableColumn property="song" class="euphorigenic"
													title="${message(code:'songRequest.song.label', default: 'Song')}"/>
			</tr>
			</thead>
			<tbody>
			<g:each in="${songRequestInstanceList}" status="i" var="songRequestInstance">
				<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					<td>
						${fieldValue(bean: songRequestInstance, field: "name")}
					</td>
					<td>
						${fieldValue(bean: songRequestInstance, field: "artist")}
					</td>
					<td>
						${fieldValue(bean: songRequestInstance, field: "song")}
					</td>
				</tr>
			</g:each>
			<tr class="${(songRequestInstanceList.size() % 2) == 0 ? 'even' : 'odd'}">
				<td>
					<g:textField name="name" value="${songRequestInstance?.name}" placeholder="Your Name"/>
				</td>
				<td>
					<g:textField name="artist" value="${songRequestInstance?.artist}" placeholder="Artist"/>
				</td>
				<td>
					<g:textField name="song" value="${songRequestInstance?.song}" placeholder="Song"/>
				</td>
			</tr>
			<tr class="noHoverChange ${(songRequestInstanceList.size() % 2) == 0 ? 'odd' : 'even'}">
				%{--<td>--}%
				%{--</td>--}%
				%{--<td>--}%
				%{--</td>--}%
				<td colspan="3">
					<g:submitButton name="create" class="zombieInput euphorigenic multi-col"
													value="Save Request"/>
				</td>
			</tr>
			</tbody>
		</table>
	</g:form>

%{--<div class="pagination">--}%
%{--<g:paginate total="${songRequestInstanceTotal}"/>--}%
%{--</div>--}%
</div>
</body>
</html>
