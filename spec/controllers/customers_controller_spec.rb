require 'rails_helper'

describe CustomersController, type: :controller do
  context 'when saving a user' do
    it 'saves in the database' do
      post :create, {name: 'maria de silva'}
    end
  end
end
