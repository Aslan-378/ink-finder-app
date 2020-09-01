class BookingsController < ApplicationController
    def index
    @bookings = policy_scope(Booking)
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.client = @booking.request.client
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to user_requests_path(current_user)
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
    authorize @booking
    @booking.destroy

    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:price, :request_id, :date, :confirmed, :address, photos: [])
  end
end


