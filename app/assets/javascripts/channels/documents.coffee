$(document).ready ->
    document_id = $('.js-document-content').data('document-id');

    App.documents = App.cable.subscriptions.create { channel: "DocumentsChannel", room: document_id } ,
    connected: ->
      # Called when the subscription is ready for use on the server

    disconnected: ->
      # Called when the subscription has been terminated by the server

    received: (data) ->
      refreshParsedContent(data['message'])

    edit: (message) ->
      @perform 'edit', message: message
