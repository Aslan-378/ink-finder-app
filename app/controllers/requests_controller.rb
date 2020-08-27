class RequestsController < ApplicationController
    skip_before_action :authenticate_user!, only: [ :new ]

  def new
    @request = Request.new
    authorize @request
  end

  def create
    @request = Request.new(request_params)
    @request.client = current_user
    @artist = User.friendly.find(params[:user_id])
    @request.user = @artist
    authorize @request
    if @request.save
      redirect_to user_path(@artist)
    else
      render :new
    end
  end


  def show
    @request = Request.find(params[:id])
    authorize @request
  end

  def index
    @requests = policy_scope(Request)
  end

  private

  def request_params
    params.require(:request).permit(:user, :quiz, :style, :address, :body_part, :size, :name, :description, photos: [])
  end
end

