angular.module('choobert.homepage')
.controller 'HomepageCtrl', (DataService) ->

  # start refreshing
  DataService.refreshData()

  @previewProjects = ->
    _.take(DataService.projects(), 3)

  return this
