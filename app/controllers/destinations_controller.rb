class DestinationsController < ApplicationController
before_action :get_destination, only: [:edit, :update, :destroy, :show]

  def index
    @destinations = Destination.all
  end

  def show

  end

  def new
    @destination = Destination.new
  end

  def create
    @destination = Destination.new(destination_params)
    if @destination.save
      redirect_to @destination
    else
      render :new
    end
  end

  def edit

  end

  def update
    @destination.update(destination_params)
    if @destination.save
      redirect_to @destination
    else
      render :edit
  end

  def destroy
    @destination.destroy
    redirect_to destinations_path
  end

  private

  def get_destination
    @destination = Destination.find(params[:id])
  end

  def destination_params
    params.require(:destination).permit(:city, :country)
  end

end
