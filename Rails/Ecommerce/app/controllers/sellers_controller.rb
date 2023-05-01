class SellersController < ApplicationController
    def new
        
        @seller = Seller.new
    end

    def create
        @seller = Seller.new(params.require(:seller).permit(:username, :first_name, :last_name, :email, :age, :password))
        if @seller.save
            flash[:notice] = "Seller account created successfully."
            redirect_to root_path
        else
            render "new", status: :unprocessable_entity
        end
        
    end
end
