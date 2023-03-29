class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.flat = Flat.find(params[:flat_id])
    @booking.user = User.new({name:"Eleanor Dubron"})
    @booking.save!
    redirect_to bookings_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end
  private

  def booking_params
    params.require(:booking).permit(:check_in, :check_out)
  end
end
