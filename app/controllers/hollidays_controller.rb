class HollidaysController < ApplicationController
    
        def index 
            @hollidays = Holliday.all 
            render json: @hollidays 
        end
    
        def show 
            render json: @holliday 
        end
        
        def create
            @holliday = Holliday.new(holliday_params)
            if @holliday.valid?
                @holliday.save
                render json: @holliday
            else
                render json: @holliday.errors.full_messages
            end
        end
    
        def destroy
            @holliday.destroy 
        end
    
        private
    
        def holliday_params
            params.require(:holliday).permit(:friend_id, :christmas, :hanukkah, :kwanza, :valentines, :easter, :reminder_time)
        end
    
        def find_holliday
            @holliday = Holliday.find(params[:id])
        end
    end
    
