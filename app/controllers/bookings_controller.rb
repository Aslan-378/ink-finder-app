class BookingsController < ApplicationController
    def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
    @request = Request.new
    @review = Review.new
  end

  def new
    @booking = Booking.new
  end

  def create
    @request = Request.find(params[:request_id])
    @booking = Booking.new(booking_params)
    @booking.request = @request
    @booking.user = current_user
    if @booking.save
      redirect_to user_booking_path(current_user, @booking)
    else
      render 'request/show'
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to user_path(current_user)
  end

  private

  def booking_params
    params.require(:booking).permit(:price, :start_date, :end_date, :confirmed, :request)
  end
end


