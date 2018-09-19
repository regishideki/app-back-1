require 'net/http'

class CustomersController < ApplicationController
  def create
    body = request.body.read

    url = URI.parse('http://app-back-2:4000/customers/create')
    request = Net::HTTP::Post.new(url.to_s)
    request.body = body
    Net::HTTP.start(url.host, url.port) do |http|
      http.request(request)
    end

    Customer.create(JSON.parse(body))

    render status: 201
  end
end
