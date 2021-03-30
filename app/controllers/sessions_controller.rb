class SessionsController < ApplicationController

    def new
        @user = User.new
    end

    def create
        # byebug
        @user = User.find_by(username: params[:user][:username])
        if @user && @user.authenticate(params[:user][:password])
            session[:id] = @user.id
            redirect_to @user
        else
            flash[:errors] = ['Username or Password are incorrect']
            redirect_to login_path
        end
    end

    def destroy
        session.clear
        redirect_to login_path
    end

end
