angular.module('choobert.directives')
.directive 'carousel', ->
  restrict: 'E'
  scope:
    slides: '='
  controller: "CarouselCtrl as carousel"
  templateUrl: "/directives/carousel/carousel.html"
