angular.module('choobert.blog')
.controller 'BlogCtrl', (DataService) ->

  # start refreshing
  DataService.refreshData()

  @blog = ->
    DataService.blog()

  return this
