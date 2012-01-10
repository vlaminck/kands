<%@ page import="kands.MadLibZombie" %>
<!doctype html>
<html>
<head>
	<meta name="layout" content="main">
	<g:set var="entityName" value="${message(code: 'madLibZombie.label', default: 'MadLibZombie')}"/>
	<title><g:message code="default.show.label" args="[entityName]"/></title>
	<style>
	p {
		line-height: 1.5;
		text-indent: 25px;
	}
	</style>
</head>

<body>
<div class="paragraph">
	<h1 class="center page-header">Steve & Katie Battle the Zombies</h1>
</div>

%{--<h1 class="center"> </h1>--}%
%{--<div class="paragraph"></div>--}%

<div id="show-madLibZombie" class="content scaffold-show" role="main">
	%{--<h1><g:message code="default.show.label" args="[entityName]"/></h1>--}%
	%{--<g:if test="${flash.message}">--}%
	%{--<div class="message" role="status">${flash.message}</div>--}%
	%{--</g:if>--}%
	<p>Steve’s face was expressionless as he slammed his <span
		class="madLibAttribute">${madLibZombieInstance.weapon1}</span> into zombie <span
		class="madLibAttribute">${madLibZombieInstance.nameSomeone.capitalize()}</span>'s <span
		class="madLibAttribute">${madLibZombieInstance.bodyPart1}</span>. "<span
		class="madLibAttribute">${madLibZombieInstance.exclamation1.capitalize()}</span>! I jammed my finger," Steve whined.
	</p>

	<p>"Oh, poor baby Stevey," Katie said mockingly from across the <span
		class="madLibAttribute">${madLibZombieInstance.typeOfRoom}</span> while ripping the <span
		class="madLibAttribute">${madLibZombieInstance.pieceOfClothing1}</span> off of the motionless zombie that used to be <span
		class="madLibAttribute">${madLibZombieInstance.yourName.capitalize()}</span>. "Do you think you'll make it?" Katie smiled just as zombie <span
		class="madLibAttribute">${madLibZombieInstance.yourName.capitalize()}</span>'s <span
		class="madLibAttribute">${madLibZombieInstance.bodyPart2}</span> fell off and sprayed blood all over Katie's <span
		class="madLibAttribute">${madLibZombieInstance.pieceOfClothing2}</span>.
	</p>

	<p>"<span
		class="madLibAttribute">${madLibZombieInstance.exclamation2.capitalize()}</span>! Why can nothing of mine stay nice?! Why?!" Katie shouted angrily.
	</p>

	<p>"<span
		class="madLibAttribute">${madLibZombieInstance.termEndearment.capitalize()}</span>, there are slighty more important things to worry about right now. Just slightly." Zombie <span
		class="madLibAttribute">${madLibZombieInstance.nameSomeone.capitalize()}</span>, weakened from the beating but still moving, <span
		class="madLibAttribute">${madLibZombieInstance.pastTenseVerb1}</span> and <span
		class="madLibAttribute">${madLibZombieInstance.pastTenseVerb2}</span> <span
		class="madLibAttribute">${madLibZombieInstance.adverb}</span> at Steve.
	</p>

	<p>Katie rolled her eyes, grabbed her <span
		class="madLibAttribute">${madLibZombieInstance.weapon2}</span> that was thick with dried zombie blood, and walked over to the window. "Yeah, I guess..." she muttered. She thought back to what she was wearing when all this started, her wedding dress, and wished that she hadn't used it to <span
		class="madLibAttribute">${madLibZombieInstance.violentVerb}</span> that zombie. It would be a nice comfort to her now, something special to remind her of a time before that government plane full of diseased zombie <span
		class="madLibAttribute">${madLibZombieInstance.pluralAnimal}</span> crashed into the Como Conservatory.
	</p>

	<p>"I wish I were still wearing it..." she said softly.
	</p>

	<p>"What did you say?" Steve asked while <span
		class="madLibAttribute">${madLibZombieInstance.violentVerbING}</span> zombie <span
		class="madLibAttribute">${madLibZombieInstance.nameSomeone.capitalize()}</span>'s <span
		class="madLibAttribute">${madLibZombieInstance.adjective}</span> <span
		class="madLibAttribute">${madLibZombieInstance.bodyPart3}</span> with his fists.
	</p>

	<p>"Nothing. I was just thinking about...my dress."
	</p>

	<p>"Oh, yeah! You totally <span
		class="madLibAttribute">${madLibZombieInstance.pastTenseViolentVerb}</span> that zombie with it. That was awes--WATCH OUT!" Zombie <span
		class="madLibAttribute">${madLibZombieInstance.yourName.capitalize()}</span>, no longer motionless, had started rapidly lunging toward them, growling and spewing blood. Steve quickly grabbed his <span
		class="madLibAttribute">${madLibZombieInstance.weapon1}</span>, Katie tightened her grip on the <span
		class="madLibAttribute">${madLibZombieInstance.weapon2}</span>. They looked at each other, smiled, and said in unison "Let's do this."
	</p>
	<br/>

	<div>The End.
	</div>
	<br/>
	<g:form>
	%{--<fieldset class="buttons">--}%
		<g:hiddenField name="id" value="${madLibZombieInstance?.id}"/>
	%{--<g:link class="noStyle zombieInput euphorigenic" action="edit" id="${madLibZombieInstance?.id}"><g:message--}%
	%{--code="default.button.edit.label" default="Edit"/></g:link>--}%
		<g:actionSubmit class="zombieInput euphorigenic multi-col" action="edit" value="Edit" id="${madLibZombieInstance?.id}"/>
	%{--</fieldset>--}%
	</g:form>
</div>
</body>
</html>
