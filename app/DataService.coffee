angular.module('choobert')
.service 'DataService', ($http, config, $timeout) ->

  projects: {}

  refreshData: ->
    projectsUrl = "projects.json"
    $http.get(config.apiBase + projectsUrl).then (response) =>
      if response?
        _.extend(@projects, response.data)
