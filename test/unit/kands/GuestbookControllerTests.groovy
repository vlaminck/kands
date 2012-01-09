package kands



import org.junit.*
import grails.test.mixin.*

@TestFor(GuestbookController)
@Mock(Guestbook)
class GuestbookControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/guestbook/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.guestbookInstanceList.size() == 0
        assert model.guestbookInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.guestbookInstance != null
    }

    void testSave() {
        controller.save()

        assert model.guestbookInstance != null
        assert view == '/guestbook/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/guestbook/show/1'
        assert controller.flash.message != null
        assert Guestbook.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/guestbook/list'


        populateValidParams(params)
        def guestbook = new Guestbook(params)

        assert guestbook.save() != null

        params.id = guestbook.id

        def model = controller.show()

        assert model.guestbookInstance == guestbook
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/guestbook/list'


        populateValidParams(params)
        def guestbook = new Guestbook(params)

        assert guestbook.save() != null

        params.id = guestbook.id

        def model = controller.edit()

        assert model.guestbookInstance == guestbook
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/guestbook/list'

        response.reset()


        populateValidParams(params)
        def guestbook = new Guestbook(params)

        assert guestbook.save() != null

        // test invalid parameters in update
        params.id = guestbook.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/guestbook/edit"
        assert model.guestbookInstance != null

        guestbook.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/guestbook/show/$guestbook.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        guestbook.clearErrors()

        populateValidParams(params)
        params.id = guestbook.id
        params.version = -1
        controller.update()

        assert view == "/guestbook/edit"
        assert model.guestbookInstance != null
        assert model.guestbookInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/guestbook/list'

        response.reset()

        populateValidParams(params)
        def guestbook = new Guestbook(params)

        assert guestbook.save() != null
        assert Guestbook.count() == 1

        params.id = guestbook.id

        controller.delete()

        assert Guestbook.count() == 0
        assert Guestbook.get(guestbook.id) == null
        assert response.redirectedUrl == '/guestbook/list'
    }
}
