class GigsController < ApplicationController
  def index
    @gigs = Gig.all
  end

  def show
    @gig = Gig.find(params[:id])
  end

  def new
    @gig = Gig.new
  end

  def create
    @gig = Gig.new(gig_params)
    @gig.host = current_user

    if @gig.save
      redirect_to gig_path(@gig)   #:action => 'show'

    else
      render :new

    end
  end

  def edit
    @gig = Gig.find(params[:id])
  end


  def update
   @gig = Gig.find(params[:id])

   if @gig.update(gig_params)
      redirect_to gig_path(@gig)
          #:action => 'show'
   else
      render :edit
   end

end

  private

  def gig_params
    params.require(:gig).permit(:name, :location, :seating_capacity, :price, :host_id, :description, :date, :photo, :photo_cache)
  end

end


