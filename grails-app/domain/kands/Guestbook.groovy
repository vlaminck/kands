package kands

class Guestbook
{
	String name
	String comment

	static constraints = {
		comment(nullable: false, maxSize: 2000)
	}
}
