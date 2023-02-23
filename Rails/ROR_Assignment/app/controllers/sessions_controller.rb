class SessionsController < ApplicationController

    def new
    
    end

    def create
        params.require(:session).permit(:username, :password)
        user = User.find_by(username: params[:session][:username])
        if user.nil?
            user = User.find_by(email: params[:session][:username].downcase)
        end
        if user.nil? == false
            puts " **************#{user.id}***************** "
            if user.authenticate(params[:session][:password])
                session[:user_id] = user.id
                flash[:notice] = "Logged in successfully."
                redirect_to user_path(user)
            else
                puts "========"
                flash.now[:alert] = "Wrong credentials. Kindly enter the correct credentials"
                render "new"
            end
        else
            flash.now[:alert] = "User does not exist. Kindly make an account first."
            render "new"
        end    
    end

    def destroy
        session[:user_id] = nil
        flash[:notice] = "Logged out successfully"
        redirect_to root_path
    end

end