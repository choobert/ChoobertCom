angular.module('choobert')
.directive 'carousel', ->
  restrict: 'E'
  scope:
    slides: '='
  controller: "CarouselCtrl as carousel"
  templateUrl: "/directives/carousel/carousel.html"
