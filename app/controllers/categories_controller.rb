class CategoriesController < ApplicationController
skip_before_action :verify_authenticity_token
    def index 
        @category=Category.all
        render json: CategorySerializer.new(@category)
    end 

    def create
     
     @category= Category.new(category_params)
     if @category.save
        render json: CategorySerializer.new(@category)
     else
        render json: @category.errors
    end
end


    private
def category_params
    params.require(:category).permit(:name, :category_description, :product_id)
    end
end
