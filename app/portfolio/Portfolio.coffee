angular.module 'choobert.portfolio', [
  'ngSanitize'
  'ui.router'
]

angular.module('choobert.portfolio').config ($stateProvider) ->
  $stateProvider
    .state 'portfolio',
      url: '/Portfolio'
      templateUrl: '/portfolio/portfolio.html'
      controller: 'PortfolioCtrl as portfolio'

angular.module('choobert.portfolio').filter('trustUrl', ($sce) ->
  return (url) ->
    return $sce.trustAsResourceUrl(url)
)
