class SolarkitsController < ApplicationController

  def index
    @solarkits = Solarkit.all
  end

  def new
    @solarkit = Solarkit.new
  end

  def create
    @solarkit = Solarkit.new(solarkit_params)
    @solarkit.user = current_user
    if @solarkit.save
      redirect_to solarkit_path(@solarkit)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @solarkit = Solarkit.find(params[:id])
  end

  def edit
    @solarkit = Solarkit.find(params[:id])
  end

  def update
    @solarkit = Solarkit.find(params[:id])
    @solarkit.update(solarkit_params)
    if @solarkit.save
      redirect_to solarkit_path(@solarkit)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def solarkit_params
    params.require(:solarkit).permit(:power, :min_production, :max_production, :price, :installation_price)
  end
end
