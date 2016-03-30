class YachtsController < ApplicationController
  def index
    @yachts = Yacht.all
  end

  private

  def yacht_params
    params.require(:yacht).permit(:name, :photo, :photo_cache)
  end
end
