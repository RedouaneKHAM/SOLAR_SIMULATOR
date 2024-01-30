class SimulationsController < ApplicationController

  def new
    @simulation = Simulation.new
  end

  def create
    @simulation = Simulation.new(simulation_params)
    if @simulation.save!
      redirect_to simulations_path(@simulation)
    else
      render :new, status: :unprocessable_entity
    end

    def show
      @simulation = Simulation.find(params[:id])
    end
  end

  private
  def simulation_params
    params.require(:simulation).permit(:type_of_property, :region, :avg_year_consumption)
  end
end
