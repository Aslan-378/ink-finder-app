class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    @request.booking = @booking
  end

  def create
    @request = Request.find(params[:request_id])
    @booking = Booking.new(booking_params)
    @booking.request = @request
    @booking.user = current_user
    @booking.save
    if @booking.save
      redirect_to user_booking(current_user, @booking)
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @request = Request.new
  end


  private

  def booking_params
    params.require(:booking).permit(:price, :start_date, :end_date, :confirmed, :request, photos: [] )
  end
end


    


