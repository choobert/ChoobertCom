angular.module('choobert.portfolio').config ($stateProvider) ->
  $stateProvider
    .state 'project',
      url: '/{projectId}'
      templateUrl: '/directives/project/project.html'
      controller: 'ProjectCtrl as project'
