class OrdersController < ApplicationController

    def show
        @order = Order.find(params[:id])
    end

    def add_item
        redirect_to new_itemsorderjoiner_path(@order)
    end

    def new
        @order = Order.new
    end

    def create
        @order = Order.create({user_id: order.user_id,
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

    def delete
        @order = Order.find(params[:id])
        @order.destroy
        redirect_to items_path #NEED NEW PATH LOCATION
    end

end
