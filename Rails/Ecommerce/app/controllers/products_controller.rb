class ProductsController < ApplicationController
    def new
        if current_seller.nil? == false and (@seller.id==current_seller.id)
            @product = Product.new
        elsif current_seller.nil?
            flash[:notice] "Kindly login to register your product"
        end
    end

    def create
        
    end
end
