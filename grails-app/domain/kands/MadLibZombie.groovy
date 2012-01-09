package kands

class MadLibZombie
{
	String weapon1
	String typeOfRoom
	String nameSomeone
	String bodyPart1
	String exclamation1
	String pieceOfClothing1
	String yourName
	String bodyPart2
	String pieceOfClothing2
	String exclamation2
	String termEndearment
	String pastTenseVerb1
	String pastTenseVerb2
	String adverb
	String weapon2
	String violentVerb
	String pluralAnimal
	String violentVerbING
	String bodyPart3
	String pastTenseViolentVerb
	String adjective

	MadLibZombie editedFrom

	static constraints = {
		editedFrom(nullable: true)
	}
}
