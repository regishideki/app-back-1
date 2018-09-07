class CustomersController < ApplicationController
  def create
    Customer.create(JSON.parse(request.body.read))

    render status: 201
  end
end
