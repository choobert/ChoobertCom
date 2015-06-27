angular.module('choobert.portfolio')
.controller 'ProjectCtrl', ($sce, $scope, $stateParams, DataService) ->

  DataService.refreshData()

  @project = ->
    DataService.project($stateParams.projectId)

  @projectTitle = ->
    @project()?.title

  @projectDate = ->
    @project()?.date

  @projectAuthor = ->
    @project()?.author

  @projectDescription = ->
    @project()?.description

  @projectGameUrl = ->
    @project()?.src

  @projectCarousel = ->
    @project()?.carousel

  return this
