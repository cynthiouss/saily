class PagesController < ApplicationController

  def about
    @countries = Country.all
    @yachts = Yacht.all
  end

  def contact
    @countries = Country.all
    @yachts = Yacht.all
  end

  def welcome
    @countries = Country.all
    @yachts = Yacht.all
  end

end
