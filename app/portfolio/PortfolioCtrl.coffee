angular.module('choobert.portfolio')
.controller 'PortfolioCtrl', (DataService) ->

  # Get Data
  DataService.refreshData()

  @projects = ->
    DataService.projects()

  return this
