require 'rails_helper'

describe "get a business route", :type => :request do
  let!(:businesses) { FactoryBot.create_list(:business, 20)}

  before { get "/businesses_by_page?page=3"}

  it 'returns 4 businesses based on a page number' do
    expect(JSON.parse(response.body).size).to eq(4)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
