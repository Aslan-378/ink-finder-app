class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def show
    @user = User.friendly.find(params[:id])
    authorize @user
  end

  def index
    @users = policy_scope(User)
    @users = @users.where(style: params[:style]) if params[:style]

    @markers = @users.artist.map do |artist|
      {
        lat: artist.latitude,
        lng: artist.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { artist: artist }),
        image_url: helpers.asset_url('bike.png')
      }
    end
  end
end
