class UsersController < ApplicationController
    def index
        @users = User.all
    end
    
    def new
        @user = User.new
    end

    def create
        @user = User.new(params.require(:user).permit(:username, :first_name, :last_name, :email, :age, :password))
        if @user.save
            flash[:notice] = "User created successfully."
            redirect_to @user
        else
            render "new", status: :unprocessable_entity
        end
    end

    def show
        @user = User.find(params[:id])
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to users_path
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        if @user.update(params.require(:user).permit(:username, :first_name, :last_name, :email, :age, :password))
            flash[:notice] = "User updated successfully."
            redirect_to @user
        else
            render "edit", status: :unprocessable_entity
        end
    end
end