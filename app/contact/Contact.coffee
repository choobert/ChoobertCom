angular.module 'choobert.contact', [
  'ui.router'
]

angular.module('choobert.contact').config ($stateProvider) ->
  $stateProvider
    .state 'contact',
      url: '/Contact'
      templateUrl: '/contact/contact.html'
      controller: 'ContactCtrl as contact'
