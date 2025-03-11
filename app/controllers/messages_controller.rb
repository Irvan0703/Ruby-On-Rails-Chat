class MessagesController < ApplicationController
  # skip_before_action :verify_authenticity_token  # Tambahkan ini untuk menghindari CSRF di API

  def index
    render json: Message.all
  end

  def create
    message = Message.create!(message_params)
    ActionCable.server.broadcast 'chat_channel', message
    render json: message, status: :created
  rescue ActiveRecord::RecordInvalid => e
    render json: { error: e.message }, status: :unprocessable_entity
  end

  private

  def message_params
    params.require(:message).permit(:content, :username)
  end
end