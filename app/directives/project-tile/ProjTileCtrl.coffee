angular.module('choobert')
.controller 'ProjectTileCtrl', ($scope, $state) ->

  @project = $scope.project

  @click = ->
    $state.go('project', {projectId: @project.id, project: @project})


  return this
