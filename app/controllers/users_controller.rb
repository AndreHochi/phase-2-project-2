class UsersController < ApplicationController

    before_action :current_user, only: [:show]
    before_action :not_logged_in, only: [:show]
    def show
        # byebug
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new({username: params[:user][:username], 
        password: params[:user][:password],
        reward_points: 0,
        balance: 0})
        if @user.valid?
            @user.save
            session[:id] = @user.id
            redirect_to user_path(@user)
        else
            flash[:errors] = @user.errors.full_messages
            redirect_to new_user_path
        end
    end

    def edit
    end

    def update
    end

    def delete
    end
    
end
