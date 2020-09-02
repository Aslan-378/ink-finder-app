class ChatroomsController < ApplicationController
    skip_after_action :verify_policy_scoped, :only => :index

    def show
        @chatroom = Chatroom.find(params[:id])
        @message = Message.new
        authorize @chatroom
    end

    def index
        if current_user.artist
            @chatrooms = current_user.requests.map(&:chatroom).compact
        else
            @chatrooms = current_user.made_requests.map(&:chatroom).compact
        end
    end
end
