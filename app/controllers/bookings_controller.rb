class BookingsController < ApplicationController
  before_action :authenticate_user!

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
    @booking.user = current_user
    # raise
    if @booking.save
      redirect_to dog_walker_booking_path(@dog_walker, @booking), notice: "Your Dog Walk has been booked!"
    else
      render "bookings/new", status: :unprocessable_entity
    end
  end

  def find_bookings
    @bookings = Booking.where(user: current_user)
  end

  private

  def booking_params
    params.require(:booking).permit(:dog_walker_id, :date, :confirmed, :notes, :dog_breed, :user_id)
  end
end
