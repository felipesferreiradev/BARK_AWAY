class DogWalkersController < ApplicationController
  def index
    @dog_walkers = DogWalker.all
  end

  def show
    @dog_walker = DogWalker.find(params[:id])
  end
end
