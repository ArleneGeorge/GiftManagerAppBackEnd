class FriendsController < ApplicationController
    before_action :set_friend, only: [:show, :update, :destroy]


    def index
        @friends = Friend.all 
        render json: @friends, include: [:gifts, :occasions, :hollidays] 
    end

    def show
        render json: @friend 
    end
    
    def create
        @friend = Friend.new(friend_params)
        if @friend.valid?
            @friend.save
            render json: @friend
        else
            render json: @friend.errors.full_messages
        end
    end

    def destroy 
        @friend.destroy
    end

    private

    def friend_params
        params.require(:friend).permit(:image_url, :first_name, :last_name, :email, :relationship, :street, :street2, :city, :state, :zip_code, :cell_phone, :user_id)
    end

    def set_friend
        @friend = Friend.find(params[:id])
    end

end
