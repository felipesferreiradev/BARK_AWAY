class PagesController < ApplicationController
  def home
    @dog_walkers = DogWalker.all
  end

  def show

  end
end
