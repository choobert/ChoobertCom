angular.module('choobert')
.service 'DataService', ($http, config, $timeout) ->

  data: {}

  refreshData: ->
    projectsUrl = "projects.json"
    $http.get(config.apiBase + projectsUrl).then (response) =>
      if response?
        _.extend(@data, response.data)

  projects: ->
    @data.projects

  project: (id) ->
    _.find(@projects(), 'id', id)
