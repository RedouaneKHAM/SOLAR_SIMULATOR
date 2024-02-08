class ReportsController < ApplicationController
  def show
    @report = Report.find(params[:id])
    if @report.daily_consumption <= 420
      @chartdata1 = [3500, 4000, 4500, 5000, 5500, 6000, 6500, 7000, 7500, 8000]
      @chartdata3 = [22500, 19500, 16500 , 13500, 10500, 7500, 4500, 1500, 0]
    elsif @report.daily_consumption <= 660
      @chartdata1 = [5500, 6000, 6500, 7000, 7500, 8000, 8500, 9000, 9500, 10000]
      @chartdata3 = [23500, 18825, 14150, 9475, 4800, 0]
    elsif @report.daily_consumption <= 1000
      @chartdata1 = [8000, 8500, 9000, 9500, 10000, 10500, 11000, 11500, 12000, 12500]
      @chartdata3 = [35500, 28700, 21900, 15100, 8300, 1500, 0]
    elsif @report.daily_consumption <= 1300
      @chartdata1 = [10000, 10500, 11000, 11500, 12000, 12500, 13000, 13500, 14000, 14500]
      @chartdata3 = [43500, 35000, 26500, 18000, 9500, 1500, 0]
    elsif @report.daily_consumption <= 3000
      @chartdata1 = [15000, 15500, 16000, 16500, 17000, 17500, 18000, 18500, 19000, 19500]
      @chartdata3 = [57500, 44750, 32000, 19250, 6500, 0]

    else
      flash[:notice] = "Contact us for more informations"
      redirect_to root_path
    end
  end
end
