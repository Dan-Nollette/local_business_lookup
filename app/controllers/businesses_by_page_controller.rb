class BusinessesByPageController < ApplicationController
  def index
    page = params[:page]
    @businesses = Business.all
    @businesses2 = Business.order('created_at DESC').page(params[:page]).per_page(4)
    puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
    puts @businesses2
    json_response(@businesses2)
  end
end
