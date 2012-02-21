package kands

import org.springframework.dao.DataIntegrityViolationException

class SongRequestController {

	static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

	def index() {
		redirect(action: "list", params: params)
	}

	def list() {
//        params.max = Math.min(params.max ? params.int('max') : 10, 100)
		[songRequestInstanceList: SongRequest.list(sort: 'dateCreated', order: 'asc'), songRequestInstanceTotal: SongRequest.count()]
	}

	def create() {
		[songRequestInstance: new SongRequest(params)]
	}

	def save() {
		def songRequestInstance = new SongRequest(params)
		if (!songRequestInstance.save(flush: true)) {
			render(view: "create", model: [songRequestInstance: songRequestInstance])
			return
		}

		flash.message = message(code: 'default.created.message', args: [message(code: 'songRequest.label', default: 'SongRequest'), songRequestInstance.id])
		redirect(action: "list")
	}

	def show() {
		def songRequestInstance = SongRequest.get(params.id)
		if (!songRequestInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'songRequest.label', default: 'SongRequest'), params.id])
			redirect(action: "list")
			return
		}

		[songRequestInstance: songRequestInstance]
	}

	def edit() {
		def songRequestInstance = SongRequest.get(params.id)
		if (!songRequestInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'songRequest.label', default: 'SongRequest'), params.id])
			redirect(action: "list")
			return
		}

		[songRequestInstance: songRequestInstance]
	}

	def update() {
		def songRequestInstance = SongRequest.get(params.id)
		if (!songRequestInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'songRequest.label', default: 'SongRequest'), params.id])
			redirect(action: "list")
			return
		}

		if (params.version) {
			def version = params.version.toLong()
			if (songRequestInstance.version > version) {
				songRequestInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
					[message(code: 'songRequest.label', default: 'SongRequest')] as Object[],
					"Another user has updated this SongRequest while you were editing")
				render(view: "edit", model: [songRequestInstance: songRequestInstance])
				return
			}
		}

		songRequestInstance.properties = params

		if (!songRequestInstance.save(flush: true)) {
			render(view: "edit", model: [songRequestInstance: songRequestInstance])
			return
		}

		flash.message = message(code: 'default.updated.message', args: [message(code: 'songRequest.label', default: 'SongRequest'), songRequestInstance.id])
		redirect(action: "show", id: songRequestInstance.id)
	}

	def delete() {
		def songRequestInstance = SongRequest.get(params.id)
		if (!songRequestInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'songRequest.label', default: 'SongRequest'), params.id])
			redirect(action: "list")
			return
		}

		try {
			songRequestInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'songRequest.label', default: 'SongRequest'), params.id])
			redirect(action: "list")
		}
		catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'songRequest.label', default: 'SongRequest'), params.id])
			redirect(action: "show", id: params.id)
		}
	}
}
