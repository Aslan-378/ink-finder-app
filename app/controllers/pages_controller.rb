class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def client_dashboard
  end

  def artist_dashboard
  end
end
