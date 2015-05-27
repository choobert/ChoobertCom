angular.module 'choobert.blog', [
  'ui.router'
]

angular.module('choobert.blog').config ($stateProvider) ->
  $stateProvider
    .state 'blog',
      url: '/Blog'
      templateUrl: '/blog/blog.html'
      controller: 'BlogCtrl as blog'
