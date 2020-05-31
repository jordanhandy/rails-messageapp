App.chatroom = App.cable.subscriptions.create "ChatroomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    $('#message-container').append data.mod_message
    # custom function to automatically scroll the chat window to the bottom
    # of the page, when a new message is submitted.
    # This can be found under assets/javascripts/application.js
    scroll_bottom();
