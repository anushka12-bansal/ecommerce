class ProductsController < ApplicationController
skip_before_action :verify_authenticity_token

    def index
     @product= Product.all 
     render json: ProductSerializer.new(@product)
    end

    def create
        byebug
    @product= Product.new(product_params)
    if @product.save
        render json: ProductSerializer.new(@product)
    else
        render json: @product.errors
    end
end

    private
    def product_params
        params.require(:product).permit(:name, :price, :manufacturing_date, :description,:expire_date,:manufactured_by)
    end
end
