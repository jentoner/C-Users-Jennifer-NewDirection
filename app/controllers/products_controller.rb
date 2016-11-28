class ProductsController < InheritedResources::Base



  private

    def product_params
      params.require(:product).permit(:name, :description, :stock_quantity, :price, :image)
    end

end

