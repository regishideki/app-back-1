require 'rails_helper'

describe CustomersController, type: :controller do
  context 'when saving a user' do
    it 'saves in the database' do
      VCR.use_cassette('send_customer_to_app-back-2') do
        post :create, body: JSON.dump(name: 'maria da silva')
      end

      expect(response).to have_http_status(201)
      expect(Customer.last.name).to eq 'maria da silva'
    end
  end
end
