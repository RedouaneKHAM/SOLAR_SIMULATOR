class SimulationsController < ApplicationController

  def new
    @simulation = Simulation.new
  end

  def create
    @simulation = Simulation.new(simulation_params)
    @simulation.user = current_user

    consumptions = [@simulation.month_fst, @simulation.month_scd, @simulation.month_trd, @simulation.month_fth]
    average = consumptions.reduce(:+).to_f / consumptions.size / 30
    report = Report.new(daily_consumption: average)
    report.simulation = @simulation

    if @simulation.save && report.save
      redirect_to report_path(report)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @simulation = Simulation.find(params[:id])
  end

  private

  def simulation_params
    params.require(:simulation).permit(:type_of_property, :region, :month_fst, :month_scd, :month_trd, :month_fth)
  end
end
