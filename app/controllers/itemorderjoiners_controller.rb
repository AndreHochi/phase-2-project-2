class ItemorderjoinersController < ApplicationController
    
    def new
        @itemorderjoiner = Itemorderjoiner.new
    end

    def create
        @itemorderjoiner = Itemorderjoiner.create({order_id: params[:itemorderjoiner][:order_id],
            item_id: params[:itemorderjoiner][:item_id]})
        redirect_to order_path(@itemorderjoiner.order)
    end

    def destroy
        @itemorderjoiner = Itemorderjoiner.find(params[:id])
        @itemorderjoiner.destroy
        redirect_to order_path(@itemorderjoiner.order)
    end

end
