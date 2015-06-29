angular.module('choobert.directives')
.controller 'NavbarCtrl', ->

angular.element(document).ready ->
  console.log "doc ready"

  domMobile = document.getElementById('js-centered-navigation-mobile-menu')
  mobileToggle = angular.element(domMobile)
  mobileToggle.unbind()

  mobileToggle.on 'click', (e) ->
    e.preventDefault()
    domMenu = document.getElementById('js-centered-navigation-menu')
    menu = angular.element(domMenu)
    menu.toggleClass 'show'
    return

  return
