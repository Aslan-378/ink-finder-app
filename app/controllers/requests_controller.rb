class RequestsController < ApplicationController
    skip_before_action :authenticate_user!, only: [ :new ]

  def new
    @request = Request.new
    authorize @request
  end

  def create
    @request = Request.new(request_params)
    @request.save
  end

  def show
    @request = Request.find(params[:id])
  end

  def index
    @requests = Request.all
  end

  private

  def request_params
    params.require(:request).permit(:user, :quiz)
  end
end

