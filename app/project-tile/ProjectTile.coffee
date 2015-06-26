angular.module('choobert')
.directive 'projectTile', ->
  restrict: 'E'
  scope:
    project: '='
  controller: "ProjectTileCtrl as proj"
  templateUrl: "/project-tile/project-tile.html"
