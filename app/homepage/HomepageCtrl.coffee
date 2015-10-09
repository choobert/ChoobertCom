angular.module('choobert.homepage')
.controller 'HomepageCtrl', (DataService) ->

  #  Get Data
  DataService.refreshData()

  @previewProjects = ->
    _.take(DataService.projects(), 3)

  return this
