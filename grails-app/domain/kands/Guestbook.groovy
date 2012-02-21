package kands

class Guestbook
{
	String name
	String comment

	Date dateCreated
	Date lastUpdated

	static constraints = {
		comment(nullable: false, maxSize: 2000)
	}
}
