class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
        @requests = Request.all
        @bookings = Booking.all
    end
end
