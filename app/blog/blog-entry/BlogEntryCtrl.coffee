angular.module('choobert.blog')
.controller 'BlogEntryCtrl', ($scope, $state, BlogEntryService) ->

  @url = $scope.url
  @data = BlogEntryService.getBlogEntry(@url)

  @getData = ->
    BlogEntryService.getBlogEntry(@url)

  @getContent = ->
    console.log @getData().content
    @getData().content

  return this
