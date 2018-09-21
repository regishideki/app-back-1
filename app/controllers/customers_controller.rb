class CustomersController < ApplicationController
  def create
    body = request.body.read

    response = Typhoeus.post('http://app-back-2:4000/customers/create', body: body)
    render status: 503 and return unless response.success?

    Customer.create(JSON.parse(body))

    render status: 201
  end
end
