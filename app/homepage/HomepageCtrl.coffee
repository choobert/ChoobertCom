angular.module('choobert.homepage')
.controller 'HomepageCtrl', (DataService) ->

  # start refreshing
  DataService.refreshData()
  @projects = DataService.projects

  return this
