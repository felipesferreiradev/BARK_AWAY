class DogWalkersController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    if params[:query].present?
      sql_query = "users.full_name @@ ? OR users.city @@ ?"
      users = User.where(sql_query, "%#{params[:query]}%", "%#{params[:query]}%")
      @dog_walkers = []
      DogWalker.all.each do |walker|
        if users.include?(walker.user)
          @dog_walkers << walker
        end
      end
    else
      @dog_walkers = DogWalker.all
    end
  end

  def show
    @dog_walker = DogWalker.find(params[:id])
  end

  def new
    @dog_walker = DogWalker.new
  end

  def create
    @dog_walker = DogWalker.new(dog_walker_params)
    @dog_walker.user = current_user
    if @dog_walker.save!
      redirect_to dog_walker_path(@dog_walker), notice: "You are a dog walker now!"
    else
      render "dog_walkers/new", status: :unprocessable_entity
    end
  end

  def destroy
    @dog_walker = DogWalker.find(params[:id])
    @dog_walker.destroy
    redirect_to dog_walkers_path, notice: "You deleted it!"
  end

  private

  def dog_walker_params
    params.require(:dog_walker).permit(:dog_walker_id, :price, :confirmed, :photo, :user_id)
  end

end
