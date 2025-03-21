class Message < ApplicationRecord
    after_create_commit { broadcast_message }

    private

  def broadcast_message
    ActionCable.server.broadcast('chat_channel', self)
  end
end
