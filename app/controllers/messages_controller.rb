class MessagesController < ApplicationController

  def index
    @messages = Message.all
  end

  def create
    @message = Message.create!(message_params)
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def message_params
      params.require(:message).permit(:content)
    end
end
