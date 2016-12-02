# Product Controller
class ProductsController < InheritedResources::Base
  # Rails automatically laods the app/views/customers/inex.html.erb
  def index
    @products = Product.order('name').page(params[:page]).per(3)
  end

  def show
    @product = Product.find(params[:id])
  end

  def categorized
    # @products = Product.where(:category_id => params[:category_id]).page(params[:page]).per(3)
    @category = Category.find(params[:category_id].to_i)
    @products = @category.products
  end

  def search
    if params[:search]
      value = params[:search]
      #@products = Product.where('name LIKE "%' + value + '%"') unless @products = Product.where('description LIKE "%' + value + '%"')
      @products = Product.where('name LIKE "%' + value + '%" OR description LIKE "%' + value + '%"')
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :stock_quantity, :price, :image, :category_id)
  end
end
