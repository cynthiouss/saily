class YachtController < ApplicationController
  def index
    @yachts = Yacht.all
  end
end
