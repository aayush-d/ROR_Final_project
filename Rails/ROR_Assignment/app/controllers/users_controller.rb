class UsersController < ApplicationController
    def index
        if current_user.nil? == false and current_user.id == 1
            @users = User.paginate(page: params[:page], per_page: 5)
        else
            flash[:notice] = "Not sufficient priviliges to access the page"
            redirect_to login_path
        end
    end
    
    def new
        @user = User.new
    end

    def create
        @user = User.new(params.require(:user).permit(:username, :first_name, :last_name, :email, :age, :password))
        if @user.save
            flash[:notice] = "User created successfully."
            redirect_to root_path
        else
            render "new", status: :unprocessable_entity
        end
    end

    def show
        if current_user.nil? == false
            @user = User.find(params[:id])
        else
            flash[:notice] = "Kindly log in to see your user details"
            redirect_to login_path
        end
    end

    def destroy
        @user = User.find(params[:id])
        if current_user.nil? == false and current_user.id == @user.id
            session.delete(:user_id)
        end
        @user.destroy
        redirect_to users_path
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        if @user.update(params.require(:user).permit(:first_name, :last_name, :password))
            flash[:notice] = "User updated successfully."
            redirect_to @user
        else
            render "edit", status: :unprocessable_entity
        end
    end
end