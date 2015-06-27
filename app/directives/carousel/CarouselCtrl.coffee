angular.module('choobert.portfolio')
.controller 'CarouselCtrl', ($scope) ->

  @currentIndex = 0
  @slides = ->
    $scope.slides

  @getSlide = ->
    str = @slides()?[@currentIndex]
    # console.log str

  @clickRight = ->
    @currentIndex++
    if @currentIndex >= @slides().length
      @currentIndex = 0

  @clickLeft = ->
    @currentIndex--
    if @currentIndex < 0
      @currentIndex = @slides().length - 1

  return this
