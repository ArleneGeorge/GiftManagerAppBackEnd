class GiftsController < ApplicationController
    before_action :set_friend, only[:show]

    def index 
        @gifts = Gift.all 
        render json: @gifts 
    end

    def show 
        render json: @gift 
    end
    
    def create
        @gift = Gift.new(gift_params)
        if @gift.valid?
            @gift.save
            render json: @gift
        else
            render json: @gift.errors.full_messages
        end
    end

    def destroy
        @gift.destroy 
    end

    private

    def gift_params
        params.require(:gift).permit(:friend_id, :link, :image_url, :name, :note)
    end

    def find_gift
        @gift = Gift.find(params[:id])
    end
end
