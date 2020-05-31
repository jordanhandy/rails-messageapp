class MessagesController < ApplicationController
    # before anything runs, ensure the user is logged in
    before_action :require_user
    def create
        #  for new message objects, assign the current message
        message = current_user.messages.build(message_params)
        # save the message
        if message.save
            # used to transfer real-time messages through ActionCable for real-time communication
            # broadcast to 'chatroom_channel', using 'mod_message' as the key
            # the value is derived from the 'message_render' method

            ActionCable.server.broadcast "chatroom_channel",
                                        mod_message: message_render(message)
        end
    end
    private
    # whitelist method for whitelisting params to be written
    # to the db
    def message_params
        params.require(:message).permit(:body)
    end

    # the message_render method used by ActionCable
    # render the partial from the controller level, not view level
    # this helps to ensure proper styling through socket layer RTC
    def message_render(message)
        render(partial: 'message', locals: {message: message})
    end
end
