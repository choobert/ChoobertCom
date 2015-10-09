angular.module('choobert.blog')
.controller 'BlogCtrl', (DataService) ->

  # Get Data
  DataService.refreshData()

  @blog = ->
    DataService.blog()

  @getBlogEntry = (url) ->
    DataService.getBlogEntry(url)

  return this
