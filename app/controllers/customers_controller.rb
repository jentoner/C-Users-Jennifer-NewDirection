# Customer Controller
class CustomersController < ApplicationController
  # Rails automatically laods the app/views/customers/inex.html.erb
  def index
    @customers = Customer.order('fullname').page(params[:page]).per(5)
  end
end
