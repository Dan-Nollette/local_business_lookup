class BusinessNameSearchController < ApplicationController

  def index
    name = params[:name]
    @business = Business.name_search(name)
    json_response(@business)
  end

end
