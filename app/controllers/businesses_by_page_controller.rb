class BusinessesByPageController < ApplicationController
  def index
    page = params[:page]
    @businesses = Business.order('created_at DESC').page(params[:page]).per_page(4)
    json_response(@businesses)
  end
end
