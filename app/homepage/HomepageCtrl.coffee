angular.module('choobert.homepage')
.controller 'HomepageCtrl', (DataService) ->

  # start refreshing
  console.log "Attempting to get data"
  DataService.refreshData()
  @projects = DataService.projects

  return this
