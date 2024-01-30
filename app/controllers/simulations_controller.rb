class SimulationsController < ApplicationController
  def new
    @simulation = Simulation.new
  end

  def create
    @simulation = Simulation.new(simulation_params)
  end

  private
  def simulation_params
    params.require(:simulation).permit(:type_of_property, :subject, :agent_id)
  end
end
