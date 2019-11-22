class OccasionsController < ApplicationController
        before_action :set_occasion, only[:show]
    
        def index 
            @occasions = Occasion.all 
            render json: @occasions 
        end
    
        def show 
            render json: @occasion 
        end
        
        def create
            @occasion = Occasion.new(occasion_params)
            if @occasion.valid?
                @occasion.save
                render json: @occasion
            else
                render json: @occasion.errors.full_messages
            end
        end
    
        def destroy
            @occasion.destroy 
        end
    
        private
    
        def occasion_params
            params.require(:occasion).permit(:friend_id, :month, :day, :year, :reminder_time)
        end
    
        def find_occasion
            @occasion = Occasion.find(params[:id])
        end
end
