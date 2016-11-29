# Product Controller
class ProductsController < InheritedResources::Base
  # Rails automatically laods the app/views/customers/inex.html.erb
  def index
    @products = Product.order('name').page(params[:page]).per(3)
  end

  def show
    @product = Product.find(params[:id])
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :stock_quantity, :price, :image, :category, :category_id)
  end
end
