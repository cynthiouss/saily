class YachtsController < ApplicationController
  def index
    @yachts = Yacht.all
  end

  def search
    @country = Country.find_by(name: params[:country])
    @yachts = Yacht.find_by(country_id: @country.id)
  end

  private

  def yacht_params
    params.require(:yacht).permit(:name, :photo, :photo_cache, :duration, :capacity, :country_id)
  end
end
