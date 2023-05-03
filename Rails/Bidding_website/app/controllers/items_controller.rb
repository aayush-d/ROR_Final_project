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
        if params[:item][:current_bid].to_i < @item.min_bid
            flash[:notice] = "Bid must be greater than the minimum bidding amount."
            redirect_to @item
        elsif params[:item][:current_bid].to_i <= @item.current_bid
            flash[:notice] = "Bid must be greater than the current bidding amount."
            redirect_to @item
        elsif @item.update(params.require(:item).permit(:current_bid, :bidder_id))
            flash[:notice] = "Bid placed successfully."
            redirect_to @item
        else
            render "place_bid", status: :unprocessable_entity
        end
    end
    
    def destroy
        @item = Item.find(params[:id])
        if current_seller.id = @item.seller_id or current_seller
            @item.destroy
            redirect_to items_path, notice: 'Item deleted successfully.'
        else
            redirect_to items_path, notice: 'Item deleted successfully.'
        end
    end
end

