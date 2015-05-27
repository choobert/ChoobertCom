describe "HomepageCtrl:", ->
  beforeEach(module("choobert.homepage"))

  beforeEach inject ($controller) ->
    @controllerService = $controller

  describe "home.value", ->
    beforeEach inject ->
      @controller = @controllerService "HomepageCtrl"

    it "has the value 'world'", ->
      expect(@controller.value).toBe('world')
