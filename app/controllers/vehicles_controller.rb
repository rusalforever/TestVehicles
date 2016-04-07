class VehiclesController < ApplicationController
  def create
    @vehicle = Vehicle.new(vehicle_params)
    if @vehicle.save
      redirect_to vehicle_path(@vehicle)
    else
      render 'new'
    end
  end

  def new
    @vehicle = Vehicle.new
    @vehicle.category_id = params[:category_id]
  end

  def edit
    @vehicle = Vehicle.find(params[:id])
  end

  def show
    @vehicle = Vehicle.find(params[:id])
  end

  def update
    @vehicle = Vehicle.find(params[:id])

    if @vehicle.update(vehicle_params)
      redirect_to vehicle_path(@vehicle)
    else
      render 'edit'
    end
  end

  def destroy
    @vehicle = Vehicle.find(params[:id])
    @vehicle.destroy
    redirect_to :back
  end

  def vehicle_params
    params.require(:vehicle).permit(:name, :color, :category_id)
  end
end
