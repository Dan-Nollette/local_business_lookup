class RandomController < ApplicationController

  def index
    @businesses = Business.all
    @business = @businesses[rand(@businesses.length) ]
    json_response(@business)
  end

  def show
    @business = Business.find(params[:id])
    json_response(@business)
  end

end
