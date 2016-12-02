# Customer Controller
class CustomersController < ApplicationController
  # Rails automatically laods the app/views/customers/inex.html.erb
  def index
    @customers = Customer.order('fullname').page(params[:page]).per(3)
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def search
    value = params[:search]
    @customers = Customer.where('fullname LIKE "%' + value + '%" OR email LIKE "%' + value + '%"')
    return @customers if params[:search]
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, notice: 'Customer was successfully created.' }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to @customer, notice: 'Customer was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer }
      else
        format.html { render :edit }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to customers_url, notice: 'Customer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def customer_params
    params.require(:customer).permit(:fullname, :email, :phone, :avatar, :notes, :id)
  end
end
