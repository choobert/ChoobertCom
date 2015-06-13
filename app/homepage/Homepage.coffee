angular.module 'choobert.homepage', [
  'ui.router'
  'choobert.config'
]

angular.module('choobert.homepage').config ($stateProvider) ->
  $stateProvider
    .state 'home',
      url: '/'
      templateUrl: '/homepage/homepage.html'
      controller: 'HomepageCtrl as home'
