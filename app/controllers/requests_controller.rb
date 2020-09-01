class RequestsController < ApplicationController

  def new
    @request = Request.new
    @artist = User.friendly.find(params[:user_id])
    authorize @request
  end

  def create
    @request = Request.new(request_params)
    @request.client = current_user
    @artist = User.friendly.find(params[:user_id])
    @request.user = @artist
    @request.style = @artist.style
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

  def accept
    @request = Request.find(params[:id])
    authorize @request
    @request.update(accepted: true)

    redirect_to user_requests_path(current_user)
  end

  def destroy
    @request = Request.find(params[:id])
    authorize @request
    @request.destroy

    redirect_to user_requests_path(current_user)
  end

  private

  def request_params
    params.require(:request).permit(:user, :quiz, :address, :body_part, :size, :name, :description, photos: [])
  end
end

