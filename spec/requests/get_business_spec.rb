require 'rails_helper'

describe "get a business route", :type => :request do
  let!(:business) { FactoryBot.create_list(:business, 1)}

  before { get "/businesses/#{business[0].id}"}

  it 'returns a business by id' do
    expect(JSON.parse(response.body).size).to eq(1)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
