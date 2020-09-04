class GalleriesController < ApplicationController
  def new
    @gallery = Gallery.new
    authorize @gallery
  end

  def create
    @gallery = Gallery.new(gallery_params)
    authorize @gallery
    @gallery.user = current_user
    if @gallery.save
      redirect_to galleries_path
    else
      render :new
    end
  end

  def show
    @gallery = Gallery.find(params[:id])
    authorize @gallery
    @commment = Comment.new
  end

  def index
    @galleries = policy_scope(Gallery)
    authorize @galleries
  end

  def destroy
    @gallery = Gallery.find(params[:id])
    authorize @gallery
    @gallery.destroy

    redirect_to galleries_path
  end

  private

  def gallery_params
    params.require(:gallery).permit(:photo, :description)
  end
end

