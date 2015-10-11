angular.module('choobert.contact')
.controller 'ContactCtrl', ($http, $scope) ->

  @sendMessage = (formData) ->
    if formData.$valid
      url = 'php/contact-form.php'

      data = {
        name: @name
        email: @email
        subject: @subject
        message: @message
      }

      console.log 'Sending:'
      console.log data
      console.log '------------'

      $http.post(url, data).
      success( (data, status, headers, config) ->
        if data.success
          console.log "successful"
        else
          alert data.message

          console.log data
          console.log status
          console.log headers
          console.log config
        return
      ).error (data, status, headers, config) ->
        alert "Error: " + status
        return


  return this
