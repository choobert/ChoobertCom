angular.module('choobert.portfolio').config ($stateProvider) ->
  $stateProvider
    .state 'project',
      url: '/Portfolio/Project/{projectId}'
      templateUrl: '/project/project.html'
      controller: 'ProjectCtrl as projCtrl'
