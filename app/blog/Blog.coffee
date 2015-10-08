angular.module 'choobert.blog', [
  'ngSanitize'
  'ui.router'
  'youtube-embed'
]

angular.module('choobert.blog').config ($stateProvider) ->
  $stateProvider
    .state 'blog',
      url: '/Blog'
      templateUrl: '/blog/blog.html'
      controller: 'BlogCtrl as blog'
