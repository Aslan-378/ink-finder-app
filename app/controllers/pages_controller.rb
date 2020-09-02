class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def client_dashboard
  end

  def artist_dashboard
  end


  def dashboard
    if current_user.artist
      @chatrooms = current_user.requests.map(&:chatroom).compact
    else
      @chatrooms = current_user.made_requests.map(&:chatroom).compact
    end
  end

  def gallery
  end
end
