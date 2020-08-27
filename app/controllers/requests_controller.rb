class RequestsController < ApplicationController
    skip_before_action :authenticate_user!, only: [ :new ]

  def new
    @request = Request.new
    authorize @request
  end

  def create
    @request = Request.new(request_params)
    @request.user = current_user
    authorize @request
    if @request.save
      redirect_to user_request_path(current_user, @request)
    else
      render :new
    end
  end


  def show
    @request = Request.find(params[:id])
    authorize @request
  end

  def index
    @requests = Request.all
  end

  private

  def request_params
    params.require(:request).permit(:name, :price, :location, :body_part, :style, :description, :size)
  end
end

