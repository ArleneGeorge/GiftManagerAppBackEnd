class FriendsController < ApplicationController

    def index
        @friends = Friend.all 
        render json: @friends 
    end

    def show
        render json: @friend 
    end
    
    def create 
        @freind = Friend.new(friend_params)
        if @friend.valid?
            @freind.save
            render json: @friend 
        else
            render json: @friend.errors.full_messages
        end
    end

    private

    def friend_params
        params.require(:friend).permit(:user_id, :image_url, :first_name, :last_name, :email, :relationship, :street, :street2, :city, :state, :zip_code, :cell_phone)
    end

    def find_friend
        @friend = Friend.find(params[:id])
    end

end
