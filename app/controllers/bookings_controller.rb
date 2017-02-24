class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    @gig = Gig.find(params[:gig_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user

    @gig = Gig.find(params[:gig_id])
    @booking.gig = @gig

    if @booking.save
      redirect_to gig_booking_path(@gig, @booking)   #:action => 'show'

    else
      render :new
    end
  end

  def update
   @booking = Booking.find(params[:id])

   if @booking.update(booking_params)
      redirect_to booking_path(@gig)    #:action => 'show'
    else
      render :edit
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to current_user.bookings
  end

  private

  def booking_params
    params.require(:booking).permit(:quantity, :user_id, :rating, :rating_description, :gig_id)
  end



end
