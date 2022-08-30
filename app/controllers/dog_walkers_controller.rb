class DogWalkersController < ApplicationController
  def index
    @dog_walkers = DogWalker.all
  end

  def show

  end

end
