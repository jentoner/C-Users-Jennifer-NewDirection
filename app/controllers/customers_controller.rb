# Customer Controller
class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]
  # Rails automatically laods the app/views/customers/inex.html.erb
  def index
    @customers = Customer.order('fullname').page(params[:page]).per(3)
  end

  def customer_params
    params.require(:customer).permit(:fullname, :email, :phone, :avatar, :notes, :id)
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def new
    @customer = Customer.new
  end

  # POST /products
  # POST /products.json
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

  # PATCH/PUT /products/1
# PATCH/PUT /products/1.json
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

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to customers_url, notice: 'Customer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_customer
    @customer = Customer.find(params[:id])
  end
end
