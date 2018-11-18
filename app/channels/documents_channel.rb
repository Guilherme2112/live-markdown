class DocumentsChannel < ApplicationCable::Channel
  def subscribed
    stream_from current_channel
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def edit(data)
    ActionCable.server.broadcast current_channel, message: data['message']
  end

  private

  def current_channel
    "document_channel_#{params[:room]}"
  end
end
