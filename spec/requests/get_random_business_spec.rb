require 'rails_helper'

describe "get a business route", :type => :request do
  let!(:businesses) { FactoryBot.create_list(:business, 1)}

  before { get "/random_business"}

  it 'returns a random business' do
    expect(JSON.parse(response.body).size).to eq(6)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
