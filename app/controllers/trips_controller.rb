class TripsController < ApplicationController
    before_action :get_trip, only: [:show, :edit, :update, :destroy]
    before_action :set_users, only: [:new, :create, :edit, :update]

    def index
      @trips = @logged_in_user.trips
    end

    def show
      @trip
    end

    def new
      @trip = Trip.new
    end

    def create
      @trip = Trip.new(trip_params)
      @trip.user = @logged_in_user
      if @trip.save
        redirect_to @trip, notice: 'Your trip was successfully created.'
      else
        render :new
      end
    end

    def edit

    end

    def update
      if @trip.user == @logged_in_user && @trip.update(trip_params)
        redirect_to @trip
      else
        render :edit
      end
    end

    def destroy
      @trip.destroy if @trip.user == @logged_in_user
      redirect_to trips_path
    end

    private

    def get_trip
      @trip = Trip.find(params[:id])
    end

    def trip_params
      params.require(:trip).permit(:trip_title, :user_id, :itinerary, :comment)
    end

    def set_users
      @users = User.all
    end

end
