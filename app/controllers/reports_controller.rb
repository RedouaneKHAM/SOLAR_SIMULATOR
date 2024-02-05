class ReportsController < ApplicationController
  def show
    @report = Report.find(params[:id])
    if @report.daily_consumption <= 420
      @chartdata1 = [6, 5, 5, 40, 56, 40, 81, 56, 95, 40]
      @chartdata2 = [6, 5, 5, 40, 56, 40, 81, 56, 95, 40]
    elsif @report.daily_consumption <= 660
      @chartdata1 = [6, 5, 5, 40, 56, 40, 81, 56, 95, 40]
      @chartdata2 = [6, 5, 5, 40, 56, 40, 81, 56, 95, 40]
    elsif @report.daily_consumption <= 1000
      @chartdata1 = [6, 5, 5, 40, 56, 40, 81, 56, 95, 40]
      @chartdata2 = [6, 5, 5, 40, 56, 40, 81, 56, 95, 40]
    elsif @report.daily_consumption <= 1300
      @chartdata1 = [6, 5, 5, 40, 56, 40, 81, 56, 95, 40]
      @chartdata2 = [6, 5, 5, 40, 56, 40, 81, 56, 95, 40]
    elsif @report.daily_consumption <= 3000
      @chartdata1 = [6, 5, 5, 40, 56, 40, 81, 56, 95, 40]
      @chartdata2 = [6, 5, 5, 40, 56, 40, 81, 56, 95, 40]
    else
      flash[:notice] = "Contact us for more information"
      redirect_to root_path
    end
  end
end
