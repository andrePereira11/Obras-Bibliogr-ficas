require 'rails_helper'

describe 'api convert names' do
  it 'successfully' do
    post '/api/v1/authors', params:{names:['Joao Silva']}

    json = JSON.parse(response.body, symbolize_names:true)

    expect(response.status).to eq 201
    expect(json[:names]).to eq 'SILVA, Joao'
  end
end
