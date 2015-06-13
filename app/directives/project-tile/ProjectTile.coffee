angular.module('choobert')
.directive 'destRow', ->
  restrict: 'E'
  scope:
    project: '='
  controller: "ProjectTileCtrl as proj"
  templateUrl: "/directives/project-tile/project-tile.html"
