package kands

import org.springframework.dao.DataIntegrityViolationException

class GuestbookController
{

	static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

	def index()
	{
		redirect(action: "list", params: params)
	}

	def list()
	{
//		params.max = Math.min(params.max ? params.int('max') : 10, 100)
		[
			guestbookInstanceList: Guestbook.list(),
			guestbookInstanceTotal: Guestbook.count()
		]
	}

	def create()
	{
		[guestbookInstance: new Guestbook(params)]
	}

	def save()
	{
		def guestbookInstance = new Guestbook(params)
		if (!guestbookInstance.save(flush: true))
		{
			render(view: "create", model: [guestbookInstance: guestbookInstance])
			return
		}

		flash.message = message(code: 'default.created.message', args: [message(code: 'guestbook.label', default: 'Guestbook'), guestbookInstance.id])
		redirect(action: "list")
	}

	def show()
	{
		def guestbookInstance = Guestbook.get(params.id)
		if (!guestbookInstance)
		{
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'guestbook.label', default: 'Guestbook'), params.id])
			redirect(action: "list")
			return
		}

		[
			guestbookInstance: guestbookInstance
		]
	}

	def edit()
	{
		def guestbookInstance = Guestbook.get(params.id)
		if (!guestbookInstance)
		{
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'guestbook.label', default: 'Guestbook'), params.id])
			redirect(action: "list")
			return
		}

		[
			guestbookInstance: guestbookInstance
		]
	}

	def update()
	{
		def guestbookInstance = Guestbook.get(params.id)
		if (!guestbookInstance)
		{
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'guestbook.label', default: 'Guestbook'), params.id])
			redirect(action: "list")
			return
		}

		if (params.version)
		{
			def version = params.version.toLong()
			if (guestbookInstance.version > version)
			{
				guestbookInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
					[message(code: 'guestbook.label', default: 'Guestbook')] as Object[],
					"Another user has updated this Guestbook while you were editing")
				render(view: "edit", model: [guestbookInstance: guestbookInstance])
				return
			}
		}

		guestbookInstance.properties = params

		if (!guestbookInstance.save(flush: true))
		{
			render(view: "edit", model: [guestbookInstance: guestbookInstance])
			return
		}

		flash.message = message(code: 'default.updated.message', args: [message(code: 'guestbook.label', default: 'Guestbook'), guestbookInstance.id])
		redirect(action: "show", id: guestbookInstance.id)
	}

	def delete()
	{
		def guestbookInstance = Guestbook.get(params.id)
		if (!guestbookInstance)
		{
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'guestbook.label', default: 'Guestbook'), params.id])
			redirect(action: "list")
			return
		}

		try
		{
			guestbookInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'guestbook.label', default: 'Guestbook'), params.id])
			redirect(action: "list")
		}
		catch (DataIntegrityViolationException e)
		{
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'guestbook.label', default: 'Guestbook'), params.id])
			redirect(action: "show", id: params.id)
		}
	}
}
