class RequestsController < ApplicationController
    skip_before_action :authenticate_user!, only: [ :new ]

  def new
    @request = Request.new
    authorize @request
  end
end

