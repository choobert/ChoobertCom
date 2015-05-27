angular.module 'choobert.portfolio', [
  'ui.router'
]

angular.module('choobert.portfolio').config ($stateProvider) ->
  $stateProvider
    .state 'portfolio',
      url: '/Portfolio'
      templateUrl: '/portfolio/portfolio.html'
      controller: 'PortfolioCtrl as portfolio'
