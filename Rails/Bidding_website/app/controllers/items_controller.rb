class ItemsController < ApplicationController
    def new
        @item = Item.new()
    end

    def create
        @item = Item.new(params.require(:item).permit(:title, :description, :category, :status))
        @item.seller = current_seller
        if @item.save
            flash[:notice] = "Item uploaded successfully."
            redirect_to root_path
        else
            render "new", status: :unprocessable_entity
        end
    end

    def index
        @items = Item.paginate(page: params[:page], per_page: 5)
    end

    def show
        @item = Item.find(params[:id])
    end

    def place_bid
        @item = Item.find(params[:id])
    end

    def place_bid_post
        @item = Item.find(params[:id])
        if params[:item][:current_bid]
            flash[:notice] = "Bid lesser than the minimum bidding amount."
        elsif @item.current_bid>params[:item][:current_bid] 
            flash[:notice] = "Bid lesser than the minimum bidding amount."
        else
            nil
        end

        if @item.update(params.require(:item).permit(:current_bid, :bidder_id))
            flash[:notice] = "Bid placed successfully."
            redirect_to @item
        else
            render "place_bid", status: :unprocessable_entity
        end
    end
end
