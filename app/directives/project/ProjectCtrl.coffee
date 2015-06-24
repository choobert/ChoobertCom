angular.module('choobert.portfolio')
.controller 'ProjectCtrl', ($stateParams) ->

  @project = $stateParams

  return this
