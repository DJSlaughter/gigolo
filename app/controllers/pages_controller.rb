class PagesController < ApplicationController
  def home
    @gigs = Gig.all
  end
end
