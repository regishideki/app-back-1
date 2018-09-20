class CustomersController < ApplicationController
  def create
    body = request.body.read

    Typhoeus.post('http://app-back-2:4000/customers/create', body: body)

    Customer.create(JSON.parse(body))

    render status: 201
  end
end
