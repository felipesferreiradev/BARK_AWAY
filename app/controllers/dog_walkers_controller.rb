class DogWalkersController < ApplicationController

  before_action :authenticate_user!

  def index
    @dog_walkers = DogWalker.all
  end

  def show
    @dog_walker = DogWalker.find(params[:id])
  end

  def new
    @dog_walker = DogWalker.new
    @dog_walker.user = current_user
  end

  def create
    @dog_walker = DogWalker.new(dog_walker_params)
    @dog_walker.user = current_user
    if @dog_walker.save
      redirect_to dog_walker_path(@dog_walker), notice: "You are a dog walker now!"
    else
      render "dog_walkers/new", status: :unprocessable_entity
    end
  end

  private

  def dog_walker_params
    params.require(:dog_walker).permit(:dog_walker_id, :price, :confirmed, :notes, :picture, :dog_breed, :user_id)
  end

end
