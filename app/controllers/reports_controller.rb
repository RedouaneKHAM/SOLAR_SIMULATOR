class ReportsController < ApplicationController
  def show
    raise
    @report = Report.find(params[:id])
  end
end
