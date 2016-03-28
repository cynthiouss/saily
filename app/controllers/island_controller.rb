class IslandController < ApplicationController
  def index
    @island = Island.all
  end
end
