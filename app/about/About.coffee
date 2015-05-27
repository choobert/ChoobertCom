angular.module 'choobert.about', [
  'ui.router'
]

angular.module('choobert.about').config ($stateProvider) ->
  $stateProvider
    .state 'about',
      url: '/About'
      templateUrl: '/about/about.html'
      controller: 'AboutCtrl as about'
