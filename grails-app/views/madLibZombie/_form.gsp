<%@ page import="kands.MadLibZombie" %>




<div class="fieldcontain ${hasErrors(bean: madLibZombieInstance, field: 'weapon1', 'error')} ">
	<label for="weapon1">
		<g:message code="madLibZombie.weapon1.label" default="Weapon"/>

	</label>
	<g:textField name="weapon1" value="${madLibZombieInstance?.weapon1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: madLibZombieInstance, field: 'nameSomeone', 'error')} ">
	<label for="nameSomeone">
		<g:message code="madLibZombie.nameSomeone.label" default="Name of Someone You Know (not K or S)"/>

	</label>
	<g:textField name="nameSomeone" value="${madLibZombieInstance?.nameSomeone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: madLibZombieInstance, field: 'bodyPart1', 'error')} ">
	<label for="bodyPart1">
		<g:message code="madLibZombie.bodyPart1.label" default="Body Part"/>

	</label>
	<g:textField name="bodyPart1" value="${madLibZombieInstance?.bodyPart1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: madLibZombieInstance, field: 'typeOfRoom', 'error')} ">
	<label for="typeOfRoom">
		<g:message code="madLibZombie.typeOfRoom.label" default="Type of Room"/>

	</label>
	<g:textField name="typeOfRoom" value="${madLibZombieInstance?.typeOfRoom}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: madLibZombieInstance, field: 'exclamation1', 'error')} ">
	<label for="exclamation1">
		<g:message code="madLibZombie.exclamation1.label" default="Exclamation"/>

	</label>
	<g:textField name="exclamation1" value="${madLibZombieInstance?.exclamation1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: madLibZombieInstance, field: 'pieceOfClothing1', 'error')} ">
	<label for="pieceOfClothing1">
		<g:message code="madLibZombie.pieceOfClothing1.label" default="Piece of Clothing"/>

	</label>
	<g:textField name="pieceOfClothing1" value="${madLibZombieInstance?.pieceOfClothing1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: madLibZombieInstance, field: 'yourName', 'error')} ">
	<label for="yourName">
		<g:message code="madLibZombie.yourName.label" default="Your Name"/>

	</label>
	<g:textField name="yourName" value="${madLibZombieInstance?.yourName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: madLibZombieInstance, field: 'bodyPart2', 'error')} ">
	<label for="bodyPart2">
		<g:message code="madLibZombie.bodyPart2.label" default="Body Part"/>

	</label>
	<g:textField name="bodyPart2" value="${madLibZombieInstance?.bodyPart2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: madLibZombieInstance, field: 'pieceOfClothing2', 'error')} ">
	<label for="pieceOfClothing2">
		<g:message code="madLibZombie.pieceOfClothing2.label" default="Piece of Clothing"/>

	</label>
	<g:textField name="pieceOfClothing2" value="${madLibZombieInstance?.pieceOfClothing2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: madLibZombieInstance, field: 'exclamation2', 'error')} ">
	<label for="exclamation2">
		<g:message code="madLibZombie.exclamation2.label" default="Exclamation"/>

	</label>
	<g:textField name="exclamation2" value="${madLibZombieInstance?.exclamation2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: madLibZombieInstance, field: 'termEndearment', 'error')} ">
	<label for="termEndearment">
		<g:message code="madLibZombie.termEndearment.label" default="Term of Endearment"/>

	</label>
	<g:textField name="termEndearment" value="${madLibZombieInstance?.termEndearment}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: madLibZombieInstance, field: 'pastTenseVerb1', 'error')} ">
	<label for="pastTenseVerb1">
		<g:message code="madLibZombie.pastTenseVerb1.label" default="Past Tense Verb"/>

	</label>
	<g:textField name="pastTenseVerb1" value="${madLibZombieInstance?.pastTenseVerb1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: madLibZombieInstance, field: 'pastTenseVerb2', 'error')} ">
	<label for="pastTenseVerb2">
		<g:message code="madLibZombie.pastTenseVerb2.label" default="Past Tense Verb"/>

	</label>
	<g:textField name="pastTenseVerb2" value="${madLibZombieInstance?.pastTenseVerb2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: madLibZombieInstance, field: 'adverb', 'error')} ">
	<label for="adverb">
		<g:message code="madLibZombie.adverb.label" default="Adverb"/>

	</label>
	<g:textField name="adverb" value="${madLibZombieInstance?.adverb}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: madLibZombieInstance, field: 'weapon2', 'error')} ">
	<label for="weapon2">
		<g:message code="madLibZombie.weapon2.label" default="Weapon"/>

	</label>
	<g:textField name="weapon2" value="${madLibZombieInstance?.weapon2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: madLibZombieInstance, field: 'violentVerb', 'error')} ">
	<label for="violentVerb">
		<g:message code="madLibZombie.violentVerb.label" default="Violent Verb"/>

	</label>
	<g:textField name="violentVerb" value="${madLibZombieInstance?.violentVerb}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: madLibZombieInstance, field: 'pluralAnimal', 'error')} ">
	<label for="pluralAnimal">
		<g:message code="madLibZombie.pluralAnimal.label" default="Plural Animal"/>

	</label>
	<g:textField name="pluralAnimal" value="${madLibZombieInstance?.pluralAnimal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: madLibZombieInstance, field: 'violentVerbING', 'error')} ">
	<label for="violentVerbING">
		<g:message code="madLibZombie.violentVerbING.label" default="Violent ING Verb"/>

	</label>
	<g:textField name="violentVerbING" value="${madLibZombieInstance?.violentVerbING}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: madLibZombieInstance, field: 'adjective', 'error')} ">
	<label for="adjective">
		<g:message code="madLibZombie.adjective.label" default="Adjective"/>

	</label>
	<g:textField name="adjective" value="${madLibZombieInstance?.adjective}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: madLibZombieInstance, field: 'bodyPart3', 'error')} ">
	<label for="bodyPart3">
		<g:message code="madLibZombie.bodyPart3.label" default="Body Part"/>

	</label>
	<g:textField name="bodyPart3" value="${madLibZombieInstance?.bodyPart3}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: madLibZombieInstance, field: 'pastTenseViolentVerb', 'error')} ">
	<label for="pastTenseViolentVerb">
		<g:message code="madLibZombie.pastTenseViolentVerb.label" default="Past Tense Violent Verb"/>

	</label>
	<g:textField name="pastTenseViolentVerb" value="${madLibZombieInstance?.pastTenseViolentVerb}"/>
</div>