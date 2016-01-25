class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_channel" # scope down in real world application
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    # ActionCable.server.broadcast 'room_channel', message: data['message']
    Message.create! content: data['message'], user: current_user
  end
end
