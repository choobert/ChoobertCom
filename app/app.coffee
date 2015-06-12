# Declare the main module and dependencies
angular.module('choobert', [
  # External modules
  'ui.router'
  'angular-loading-bar'

  # Our modules
  'choobert.blog'
  'choobert.contact'
  'choobert.header'
  'choobert.homepage'
  'choobert.portfolio'
])


angular.module('choobert').config ($locationProvider) ->
  $locationProvider.html5Mode(enabled: true, requireBase: false)

angular.module('choobert').config ($urlRouterProvider) ->
  $urlRouterProvider.otherwise('/')

angular.module('choobert').config ($httpProvider) ->
  $httpProvider.defaults.withCredentials = true
  $httpProvider.defaults.headers.delete = {'Content-Type': 'application/json'}

angular.module('choobert').config (cfpLoadingBarProvider) ->
  cfpLoadingBarProvider.includeSpinner = false
  cfpLoadingBarProvider.latencyThreshold = 250

# We have to have $state here, to avoid this bug:
# https://github.com/angular-ui/ui-router/issues/679#issuecomment-31116942
angular.module('choobert').run ($state, $rootScope) ->

  # UI Router silently swallows errors on resolve. This exposes them.
  $rootScope.$on '$stateChangeError',
  (event, toState, toParams, fromState, fromParams, error) ->
    throw error
