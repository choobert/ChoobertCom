angular.module('choobert.portfolio')
.controller 'PortfolioCtrl', (DataService) ->

  # start refreshing
  DataService.refreshData()

  @projects = ->
    DataService.projects()

  return this
