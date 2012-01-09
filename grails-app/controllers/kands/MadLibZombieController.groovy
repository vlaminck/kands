package kands

import org.springframework.dao.DataIntegrityViolationException

class MadLibZombieController
{

	static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

	def index()
	{
		redirect(action: "create", params: params)
	}

	def list()
	{
		params.max = Math.min(params.max ? params.int('max') : 10, 100)
		[
			madLibZombieInstanceList: MadLibZombie.list(params),
			madLibZombieInstanceTotal: MadLibZombie.count(),
			typeName: 'MadLib'
		]
	}

	def create()
	{
		[
			madLibZombieInstance: new MadLibZombie(params),
			typeName: 'MadLib'
		]
	}

	def save()
	{
		def madLibZombieInstance = new MadLibZombie(params)

		if (!madLibZombieInstance.save(flush: true))
		{
			render(view: "create", model: [madLibZombieInstance: madLibZombieInstance])
			return
		}

		flash.message = message(code: 'default.created.message', args: [message(code: 'madLibZombie.label', default: 'MadLibZombie'), madLibZombieInstance.id])
		redirect(action: "show", id: madLibZombieInstance.id)
	}

	def show()
	{
		def madLibZombieInstance = MadLibZombie.get(params.id)
		if (!madLibZombieInstance)
		{
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'madLibZombie.label', default: 'MadLibZombie'), params.id])
			redirect(action: "list")
			return
		}

		[
			madLibZombieInstance: madLibZombieInstance,
			instanceId: madLibZombieInstance.id,
			typeName: 'MadLib'
		]
	}

	def edit()
	{
		def madLibZombieInstance = MadLibZombie.get(params.id)
		if (!madLibZombieInstance)
		{
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'madLibZombie.label', default: 'MadLibZombie'), params.id])
			redirect(action: "list")
			return
		}

		[
			madLibZombieInstance: madLibZombieInstance,
			typeName: 'MadLib'
		]
	}

	def update()
	{
		def currentMadLibZombieInstance = MadLibZombie.get(params.id)
		if (!currentMadLibZombieInstance)
		{
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'madLibZombie.label', default: 'MadLibZombie'), params.id])
			redirect(action: "list")
			return
		}

		if (params.version)
		{
			def version = params.version.toLong()
			if (currentMadLibZombieInstance.version > version)
			{
				currentMadLibZombieInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
					[message(code: 'madLibZombie.label', default: 'MadLibZombie')] as Object[],
					"Another user has updated this MadLibZombie while you were editing")
				render(view: "edit", model: [madLibZombieInstance: currentMadLibZombieInstance])
				return
			}
		}

		def madLibZombieInstance = new MadLibZombie(params)
		madLibZombieInstance.editedFrom = currentMadLibZombieInstance
		if (!madLibZombieInstance.save(flush: true))
		{
			render(view: "edit", model: [madLibZombieInstance: madLibZombieInstance])
			return
		}
		flash.message = message(code: 'default.updated.message', args: [message(code: 'madLibZombie.label', default: 'MadLibZombie'), madLibZombieInstance.id])
		redirect(action: "show", id: madLibZombieInstance.id)
	}

	def delete()
	{
		def madLibZombieInstance = MadLibZombie.get(params.id)
		if (!madLibZombieInstance)
		{
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'madLibZombie.label', default: 'MadLibZombie'), params.id])
			redirect(action: "list")
			return
		}

		try
		{
			madLibZombieInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'madLibZombie.label', default: 'MadLibZombie'), params.id])
			redirect(action: "list")
		}
		catch (DataIntegrityViolationException e)
		{
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'madLibZombie.label', default: 'MadLibZombie'), params.id])
			redirect(action: "show", id: params.id)
		}
	}
}
