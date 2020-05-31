class ChatroomChannel < ApplicationCable::Channel
  # Created through ActionCable
  def subscribed
    # subscribe to the channel
    # referenced in the messages_controller.rb file
    stream_from "chatroom_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
