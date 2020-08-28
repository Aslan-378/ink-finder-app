class StylesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :new, :show]

  def index
    @styles = policy_scope(Style)
    authorize @styles
  end

  def show
    @style = Style.find(params[:id])
    authorize @style
  end
end
