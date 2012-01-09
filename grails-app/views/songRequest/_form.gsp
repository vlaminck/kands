<%@ page import="kands.SongRequest" %>


<div class="fieldcontain ${hasErrors(bean: songRequestInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="songRequest.name.label" default="Your Name"/>

	</label>
	<g:textField name="name" value="${songRequestInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: songRequestInstance, field: 'artist', 'error')} ">
	<label for="artist">
		<g:message code="songRequest.artist.label" default="Artist"/>

	</label>
	<g:textField name="artist" value="${songRequestInstance?.artist}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: songRequestInstance, field: 'song', 'error')} ">
	<label for="song">
		<g:message code="songRequest.song.label" default="Song"/>

	</label>
	<g:textField name="song" value="${songRequestInstance?.song}"/>
</div>

