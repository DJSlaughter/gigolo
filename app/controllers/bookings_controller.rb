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

  def update
   @booking = Booking.find(params[:id])

   if @booking.update_attributes(booking_params)
      redirect_to booking_path(@gig)    #:action => 'show'
   else
      render :edit
   end

  private

  def booking_params
    params.require(:booking).permit(:quatity, :user_id, :rating, :rating_description, :gig_id)
  end

end
