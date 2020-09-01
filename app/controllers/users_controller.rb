class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def show
    @user = User.friendly.find(params[:id])
    authorize @user
  end

  def index
    @users = policy_scope(User)
    #@users = @users.where(style: params[:style]) if params[:style]

    if params[:query].present?
      sql_query = "city ILIKE :query OR style ILIKE :query OR nickname ILIKE :query "
      @users = User.where(sql_query, query: "%#{params[:query]}%")

      #@users = User.near(params[:query], 20)
      @markers = @users.map do |artist|
        {
          lat: artist.latitude,
          lng: artist.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { artist: artist }),
          image_url: helpers.asset_url('map_icon.png')
        }
      end
    else
      @users = User.where(artist: true)
      #@users.artist = User.where(artist: true).geocoded
      @markers = @users.map do |artist|
        {
          lat: artist.latitude,
          lng: artist.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { artist: artist }),
          image_url: helpers.asset_url('map_icon.png')
        }
      end
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Profile created"
      if @user.artist
        redirect_to dashboard_artist_path
      else
        redirect_to dashboard_path
      end
    else
      render :new
    end
  end

  def edit
    user
    authorize @user
  end

  def update
    user
    authorize @user
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      if @user.artist
        redirect_to dashboard_path
      else
        redirect_to dashboard_path
      end
    else
      render 'edit'
    end
  end

  private

  def user
    @user = User.friendly.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :phone_number, :style, :price, :address, :city, :bio, :experience, :inspiration, :hobbies, :facebook, :shop, :website, :instagram, :nickname, :avatar, photos: [])
  end

end
