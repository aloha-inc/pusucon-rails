
class SchoolsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "schools"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
