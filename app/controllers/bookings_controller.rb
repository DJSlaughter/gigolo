class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user

    if @booking.save
      redirect_to booking_path(@booking)   #:action => 'show'

    else
      render :new
    end
  end

  private

  def gig_params
    params.require(:booking).permit(:quatity, :user_id, :rating, :rating_description, :gig_id)
  end

end
