angular.module('choobert.blog')
.controller 'BlogEntryCtrl', ($scope, $state, BlogEntryService) ->

  @url = $scope.url
  @data = BlogEntryService.getBlogEntry(@url)

  @getData = ->
    BlogEntryService.getBlogEntry(@url)

  @getContent = ->
    @getData().content

  return this
