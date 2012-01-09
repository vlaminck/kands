package kands



import org.junit.*
import grails.test.mixin.*

@TestFor(SongRequestController)
@Mock(SongRequest)
class SongRequestControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/songRequest/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.songRequestInstanceList.size() == 0
        assert model.songRequestInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.songRequestInstance != null
    }

    void testSave() {
        controller.save()

        assert model.songRequestInstance != null
        assert view == '/songRequest/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/songRequest/show/1'
        assert controller.flash.message != null
        assert SongRequest.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/songRequest/list'


        populateValidParams(params)
        def songRequest = new SongRequest(params)

        assert songRequest.save() != null

        params.id = songRequest.id

        def model = controller.show()

        assert model.songRequestInstance == songRequest
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/songRequest/list'


        populateValidParams(params)
        def songRequest = new SongRequest(params)

        assert songRequest.save() != null

        params.id = songRequest.id

        def model = controller.edit()

        assert model.songRequestInstance == songRequest
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/songRequest/list'

        response.reset()


        populateValidParams(params)
        def songRequest = new SongRequest(params)

        assert songRequest.save() != null

        // test invalid parameters in update
        params.id = songRequest.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/songRequest/edit"
        assert model.songRequestInstance != null

        songRequest.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/songRequest/show/$songRequest.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        songRequest.clearErrors()

        populateValidParams(params)
        params.id = songRequest.id
        params.version = -1
        controller.update()

        assert view == "/songRequest/edit"
        assert model.songRequestInstance != null
        assert model.songRequestInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/songRequest/list'

        response.reset()

        populateValidParams(params)
        def songRequest = new SongRequest(params)

        assert songRequest.save() != null
        assert SongRequest.count() == 1

        params.id = songRequest.id

        controller.delete()

        assert SongRequest.count() == 0
        assert SongRequest.get(songRequest.id) == null
        assert response.redirectedUrl == '/songRequest/list'
    }
}
