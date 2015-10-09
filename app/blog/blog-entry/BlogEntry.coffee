angular.module('choobert.blog')
.directive 'blogEntry', ->
  restrict: 'E'
  scope:
    url: '='
  controller: "BlogEntryCtrl as entryCtrl"
  templateUrl: "/blog/blog-entry/blog-entry.html"
