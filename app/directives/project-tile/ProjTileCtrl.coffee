angular.module('choobert')
.controller 'ProjectTileCtrl', ($scope) ->

  @project = $scope.project

  @click = ->
    console.log "clicked"
    console.log @project

  return this
