<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title><g:layoutTitle default="Grails"/></title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
	<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
	<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
	<g:layoutHead/>
	<r:layoutResources/>
	<g:set var="entityName" value="${typeName ?: controllerName?.capitalize()}"/>
	<script type="text/javascript">

		var _gaq = _gaq || [];
		_gaq.push(['_setAccount', 'UA-28115723-1']);
		_gaq.push(['_trackPageview']);

		(function()
		{
			var ga = document.createElement('script');
			ga.type = 'text/javascript';
			ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(ga, s);
		})();

	</script>
</head>

<body>
<div id="wrapper" class="euphorigenic">
	<div id="grailsLogo" role="banner" style="position: fixed; z-index: 10; background-color: transparent;">
		%{--<g:img dir="images" file="kandsbanner.png"/>--}%
		%{--<g:img dir="images" file="kandsbanner-newer.png"/>--}%
		<g:img dir="images" file="kandsbanner-even-newer.png"/>
	</div>

	<div style="height:250px; width:960px; background-color: transparent;"></div>
	<%
		def openBrace = '<span class="braces">{</span> <span>'
		def closeBrace = '</span> <span class="braces">}</span>'
	%>
	<ul class="inner-wrap">
		<li class="nav" role="navigation">
			<ul>
				<li>
					<g:link uri="/" class="noStyle">
					%{--${openBrace}Home${closeBrace}--}%
						Home
					</g:link>
				</li>
				<li>
					<g:link uri="/ourStory" class="noStyle">
						Our Story
					%{--${openBrace}Our Story${closeBrace}--}%
					</g:link>
				</li>
				<li>
					<g:link uri="/registries" class="noStyle">
					%{--${openBrace}Registries${closeBrace}--}%
						Registries
					</g:link>
				</li>
				<li>
					<g:link uri="/maps" class="noStyle">
					%{--${openBrace}Maps / Information${closeBrace}--}%
						Maps & Information
					</g:link>
				</li>
				<li>
					<g:link url="http://www.steveandkatiegetmarried.com/steveandkatie/index" class="noStyle"
							target="_blank">
					%{--${openBrace}Maps / Information${closeBrace}--}%
						Save The Date
					</g:link>
				</li>
				<li>
					<g:link controller="songRequest" class="noStyle">
					%{--${openBrace}Song Request${closeBrace}--}%
						Song Request
					</g:link>
				</li>
				<li>
					<g:link controller="guestbook" class="noStyle">
					%{--${openBrace}Guestbook${closeBrace}--}%
						Guestbook
					</g:link>
				</li>
				<li>
					<g:link controller="madLibZombie" class="noStyle">
					%{--${openBrace}MadLibs${closeBrace}--}%
						Mad Lib
					</g:link>
				</li>
				%{--<g:each in="${navItems}" var="navItem">--}%
				%{--<li>--}%
				%{--<g:link controller="${controllerName}" action="${navItem}" id="${instanceId}"--}%
				%{--class="noStyle">--}%
				%{--${openBrace}${navItem.capitalize()}${closeBrace}--}%
				%{--</g:link>--}%
				%{--</li>--}%
				%{--</g:each>--}%
				%{--<g:if test="${entityName}">--}%
				%{--<li>--}%
				%{--<g:link action="list">--}%
				%{--${openBrace}<g:message code="default.list.label" args="[entityName]"/>${closeBrace}--}%
				%{--</g:link>--}%
				%{--</li>--}%
				%{--<li>--}%
				%{--<g:link action="create">--}%
				%{--${openBrace}<g:message code="default.new.label" args="[entityName]"/>${closeBrace}--}%
				%{--</g:link>--}%
				%{--</li>--}%
				%{--</g:if>--}%
				%{--<g:if test="${actionName == 'show'}">--}%
				%{--<li>--}%
				%{--<g:link action="edit" id="${instanceId}">--}%
				%{--${openBrace}<g:message code="default.button.edit.label" default="Edit"/>${closeBrace}--}%
				%{--</g:link>--}%
				%{--</li>--}%
				%{--</g:if>--}%
			</ul>
		</li>
		<li class="content scaffold-list" role="main">
			<g:layoutBody/>
		</li>
	</ul>


	<div class="footer" role="contentinfo"></div>

	<div id="spinner" class="spinner" style="display:none;">
		<g:message code="spinner.alt" default="Loading&hellip;"/>
	</div>
	<g:javascript library="application"/>
	<r:layoutResources/>
</div>
</body>
</html>