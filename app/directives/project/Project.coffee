angular.module('choobert.portfolio').config ($stateProvider) ->
  $stateProvider
    .state 'portfolio.project',
      url: '/Project/{projectId}'
      templateUrl: '/directives/project/project.html'
      controller: 'ProjectCtrl as project'
