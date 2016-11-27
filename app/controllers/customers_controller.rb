# Customer Controller
class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end
  # Rails automatically laods the app/views/customers/inex.html.erb
end
