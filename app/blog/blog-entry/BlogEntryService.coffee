angular.module('choobert.blog')
.service 'BlogEntryService', ($http, config, $timeout) ->

  getBlogEntry: (url) ->
    if !@data?
      @data = {}

    if @data[url]?
      return @data[url]
    else
      if !@data? then @data = {}
      if !@data[url]? then @data[url] = {}

      $http.get(config.apiBase + url).then (response) =>
        if response?
          _.extend(@data[url], response.data.blog[0])
          return @data[url]
