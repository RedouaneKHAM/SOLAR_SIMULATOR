class SolarkitsController < ApplicationController
  def index
    @solarkits = Solarkit.all
  end
end
