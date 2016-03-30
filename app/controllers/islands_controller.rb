class IslandsController < ApplicationController
  def index
    @island = Island.all
  end
end
