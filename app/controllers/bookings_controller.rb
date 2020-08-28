class BookingsController < ApplicationController
    def index
    @bookings = policy_scope(Booking)
  end

  def show
    @booking = Booking.friendly.find(params[:id])
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @request = Request.find(params[:booking][:request].to_i)
    @booking = Booking.new(booking_params)
    @booking.request = @request
    @client = current_user
    @artist = @request.user
    @booking.client = @client
    @booking.user = @artist
    authorize @booking
    if @booking.save
      redirect_to user_booking_path(current_user, @booking)
    else
      render 'requests/show'
    end
  end

  def accept
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.update(confirmed: true)

    redirect_to user_bookings_path(current_user)
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @request
    @request.destroy

    redirect_to user_bookings_path(current_user)
  end

  private

  def booking_params
    params.require(:booking).permit(:price, :start_date, :end_date, :confirmed, photos: [])
  end
end


