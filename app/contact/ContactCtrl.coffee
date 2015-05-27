angular.module('choobert.contact')
.controller 'ContactCtrl', ($http, $scope) ->

  @sendMessage = (formData) ->
    if formData.$valid
      url = 'http://choobert.com/php/contact-form.php'

      console.log formData
      console.log @name

      data = {
        name: @name
        email: @email
        subject: @subject
        message: @message
      }

      $http.post(url, data).
      success( (data, status, headers, config) ->
        if data.success
          console.log "successful"
        else
          alert data.message
        return
      ).error (data, status, headers, config) ->
        alert "Error: " + status
        return


  return this
