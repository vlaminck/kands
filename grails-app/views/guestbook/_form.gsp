<%@ page import="kands.Guestbook" %>


<div class="fieldcontain ${hasErrors(bean: guestbookInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="guestbook.name.label" default="Name"/>

	</label>
	<g:textField name="name" value="${guestbookInstance?.name}"/>
</div>


<div class="fieldcontain ${hasErrors(bean: guestbookInstance, field: 'comment', 'error')} ">
	<label for="comment">
		<g:message code="guestbook.comment.label" default="Comment"/>

	</label>
	<g:textArea name="comment" cols="40" rows="5" maxlength="2000" value="${guestbookInstance?.comment}"/>
</div>

