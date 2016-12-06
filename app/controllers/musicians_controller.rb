class MusiciansController < ApplicationController
    before_action :find_musician, only: [:show, :edit, :update, :destroy]
    
    def index
        @musicians = Musician.all.order("created_at DESC")
    end
    
    def show
    end
    
    def new
        @musician = Musician.new
    end
    
    def create
        @musician = Musician.new(musicians_params)
        
        if @musician.save
            redirect_to @musician
        else
            render "New"
        end
        
    end
    
    def edit
    end
    
    def update
    end
    
    def destroy
    end
    
    private
    
    def musicians_params
        params.require(:musician).permit(:name, :description, :instrument, :email)
    end
    
    def find_musician
        @musician = Musician.find(params[:id])
    end
    
    
end
