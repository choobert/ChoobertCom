angular.module('choobert.portfolio')
.controller 'CarouselCtrl', ($scope) ->

  @currentIndex = 0
  @slides = ->
    $scope.slides

  @getSlide = ->
    @slides()?[@currentIndex]

  @getBubbleClass = (index) ->
    if @currentIndex == index
      return "fa-circle"
    else
      return "fa-circle-o"

  @setSlide = (index) ->
    @currentIndex = index

  @clickRight = ->
    @currentIndex++
    if @currentIndex >= @slides().length
      @currentIndex = 0

  @clickLeft = ->
    @currentIndex--
    if @currentIndex < 0
      @currentIndex = @slides().length - 1

  return this
