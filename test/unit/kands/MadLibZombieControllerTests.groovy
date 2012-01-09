package kands



import org.junit.*
import grails.test.mixin.*

@TestFor(MadLibZombieController)
@Mock(MadLibZombie)
class MadLibZombieControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/madLibZombie/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.madLibZombieInstanceList.size() == 0
        assert model.madLibZombieInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.madLibZombieInstance != null
    }

    void testSave() {
        controller.save()

        assert model.madLibZombieInstance != null
        assert view == '/madLibZombie/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/madLibZombie/show/1'
        assert controller.flash.message != null
        assert MadLibZombie.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/madLibZombie/list'


        populateValidParams(params)
        def madLibZombie = new MadLibZombie(params)

        assert madLibZombie.save() != null

        params.id = madLibZombie.id

        def model = controller.show()

        assert model.madLibZombieInstance == madLibZombie
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/madLibZombie/list'


        populateValidParams(params)
        def madLibZombie = new MadLibZombie(params)

        assert madLibZombie.save() != null

        params.id = madLibZombie.id

        def model = controller.edit()

        assert model.madLibZombieInstance == madLibZombie
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/madLibZombie/list'

        response.reset()


        populateValidParams(params)
        def madLibZombie = new MadLibZombie(params)

        assert madLibZombie.save() != null

        // test invalid parameters in update
        params.id = madLibZombie.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/madLibZombie/edit"
        assert model.madLibZombieInstance != null

        madLibZombie.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/madLibZombie/show/$madLibZombie.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        madLibZombie.clearErrors()

        populateValidParams(params)
        params.id = madLibZombie.id
        params.version = -1
        controller.update()

        assert view == "/madLibZombie/edit"
        assert model.madLibZombieInstance != null
        assert model.madLibZombieInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/madLibZombie/list'

        response.reset()

        populateValidParams(params)
        def madLibZombie = new MadLibZombie(params)

        assert madLibZombie.save() != null
        assert MadLibZombie.count() == 1

        params.id = madLibZombie.id

        controller.delete()

        assert MadLibZombie.count() == 0
        assert MadLibZombie.get(madLibZombie.id) == null
        assert response.redirectedUrl == '/madLibZombie/list'
    }
}
