class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create({username: params[:user][:username], 
        password: params[:user][:password],
        reward_points: 0,
        balance: 0})
        redirect_to user_path(@user)
    end

    def edit
    end

    def update
    end

    def delete
    end
    
end
