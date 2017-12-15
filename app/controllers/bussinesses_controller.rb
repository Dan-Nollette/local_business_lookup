class BusinessesController < ApplicationController

  def index
    @business = {"quotation": "The secret of getting ahead is getting started."}
    json_response(@business)
  end

  private
  def json_response(object)
    render json: object, status: :ok
  end
end
