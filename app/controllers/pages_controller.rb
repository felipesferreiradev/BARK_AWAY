class PagesController < ApplicationController
  def home
    @dog_walkers = DogWalker.all
  end

  def show
    @dog_walker = DogWalker.find(params[:id])
  end
end
