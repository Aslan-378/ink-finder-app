class StylesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :new, :show, :create]

  def new
    @style = Style.new
    authorize @style
  end

  def create
    @style = Style.new(style_params)
    authorize @style
    if @style.save
      redirect_to styles_path
    else
      render :new
    end
  end

  def index
    @styles = policy_scope(Style)
    authorize @styles
  end

  def show
    @style = Style.find(params[:id])
    authorize @style
  end

  private

  def style_params
    params.require(:style).permit(:name, :description, :photo)
  end
end
