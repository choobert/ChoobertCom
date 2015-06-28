angular.module('choobert.directives')
.controller 'CarouselCtrl', ($scope) ->

  @currentIndex = 0
  @hoverLeft = false
  @hoverRight = false

  @slides = ->
    $scope.slides

  @getBubbleClass = (index) ->
    if @currentIndex == index
      return "fa-circle"
    else
      return "fa-circle-o"

  @getHoverLeft = ->
    if @hoverLeft then "hovered"

  @getHoverRight = ->
    if @hoverRight then "hovered"

  @getSlide = ->
    @slides()?[@currentIndex]

  @setHoverLeft = (hover) ->
    @hoverLeft = hover

  @setHoverRight = (hover) ->
    @hoverRight = hover

  @setSlide = (index) ->
    @currentIndex = index

  @clickLeft = ->
    @currentIndex--
    if @currentIndex < 0
      @currentIndex = @slides().length - 1

  @clickRight = ->
    @currentIndex++
    if @currentIndex >= @slides().length
      @currentIndex = 0


  return this
