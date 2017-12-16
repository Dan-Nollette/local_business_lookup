class RandomBusinessController < ApplicationController
  def index
    @business = @businesses[rand(@businesses.length) ]
    json_response(@business)
  end
end
