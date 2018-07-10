class TripsController < ApplicationController
    before_action :get_trip, only: [:show, :edit, :update, :destroy]

    def index
      @trips = Trip.all
    end

    def show

    end

    def new
      @trip = Trip.new
    end

    def create
      @trip = Trip.create(trip_params)
      if @trip.save
        redirect_to @trip
      else
        render :new
      end
    end

    def edit

    end

    def update
      @trip.update(trip_params)
      if @trip.save
        redirect_to @trip
      else
        render :edit
      end
    end

    def destroy
      @trip.destroy
      redirect_to trips_path
    end

    private

    def get_trip
      @trip = Trip.find(params[:id])
    end

    def trip_params
      params.require(:trip).permit(:trip_title, :user_id, :itinerary, :comment)
    end

end
