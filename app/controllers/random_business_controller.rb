class RandomBusinessController < ApplicationController
  def index
    @businesses = Business.all
    @business = @businesses[rand(@businesses.length) ]
    json_response(@business)
  end
end
