angular.module('choobert.portfolio')
.controller 'ProjectCtrl', ($sce, $scope, $stateParams, DataService) ->

  DataService.refreshData()

  @projectId = $stateParams.projectId

  @project = ->
    DataService.project(@projectId)

  @projectTitle = ->
    @project()?.title

  @projectGameUrl = ->
    console.log "trusting: " + $sce.trustAsResourceUrl(@project()?.src)
    @project()?.src

  return this
