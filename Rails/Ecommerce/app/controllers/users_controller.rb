class UsersController < ApplicationController
    def new
        
        @user = User.new
    end

    def create
        @user = User.new(params.require(:user).permit(:username, :first_name, :last_name, :email, :age, :password))
        if @user.save
            flash[:notice] = "User account created successfully."
            redirect_to root_path
        else
            render "new", status: :unprocessable_entity
        end
        
    end
end
