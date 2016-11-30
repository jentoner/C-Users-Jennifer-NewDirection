# Categories Controller
class CategoriesController < InheritedResources::Base
  private

    def category_params
      params.require(:category).permit(:title, :definition)
    end
end
