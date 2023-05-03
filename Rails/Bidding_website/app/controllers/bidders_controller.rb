class BiddersController < ApplicationController
    def show
        @bidder = Bidder.find(params[:id])
    end
end