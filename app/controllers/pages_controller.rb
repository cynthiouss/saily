class PagesController < ApplicationController
  def contact
  end

  def about
  end

  def welcome
    @countries = Country.all
    @yachts = Yacht.all
  end

end
