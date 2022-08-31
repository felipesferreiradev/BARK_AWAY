class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @dog_walker = DogWalker.find(params[:dog_walker_id])
    @booking = Booking.new
  end

  def create
    @dog_walker = DogWalker.find(params[:dog_walker_id])
    @booking = Booking.new(booking_params)
    @booking.dog_walker = @dog_walker
    if @booking.save
      redirect_to dog_walker_path(@dog_walk)
    else
      render "bookings/show", status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:booking).permit(:dog_walker_id, :date, :confirmed)
  end

end
