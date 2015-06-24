angular.module('choobert.portfolio')
.controller 'ProjectCtrl', ($sce, $scope, $stateParams, DataService) ->

  DataService.refreshData()

  @project = ->
    DataService.project($stateParams.projectId)

  @projectTitle = ->
    @project()?.title

  @projectGameUrl = ->
    @project()?.src

  return this
