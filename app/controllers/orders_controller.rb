class OrdersController < ApplicationController

    def show
        @order = Order.find(params[:id])
        @itemorderjoiner = Itemorderjoiner.new
    end

    #def add_item
    #    @order = Order.find(params[:id])
    #    @itemjoiner = Itemorderjoiner.create(order_id: @order.id, item_id: params[:item_id])
    #    redirect_to order_path(@order)
    #end

    def checkout
        @order = Order.find(params[:id])
    end

    def new
        @order = Order.new
    end

    def create
        @order = Order.create({user_id: current_user.id,
            location_id: params[:order][:location_id]})
        redirect_to order_path(@order)
    end

    def edit
        @order = Order.find(params[:id])
    end

    def update
        @order = Order.update({location_id: params[:order][:location_id]})
        redirect_to order_path(@order)
    end

    def destroy
        @order = Order.find(params[:id])
        @order.destroy
        redirect_to current_user
    end

end
