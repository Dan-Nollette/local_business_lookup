require 'rails_helper'

describe "get a business route", :type => :request do
  let!(:businesses) { FactoryBot.create_list(:business, 1, :name => "joes")}

  before { get "/business_name_search?name=joes"}

  it 'returns a business with a matching name' do
    expect(JSON.parse(response.body).size).to eq(1)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
