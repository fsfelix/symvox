class MusiciansController < ApplicationController
    before_action :find_musician, only: [:show, :edit, :update, :destroy]
    
    def index
        if params[:category].blank?
            @musicians = Musician.all.order("created_at DESC")
        else
            @category_id = Category.find_by(name: params[:category]).id
            @musicians = Musician.where(category_id: @category_id).order("created_at DESC")
        end
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
        if @musician.update(musicians_params)
            redirect_to @musician
        else
            render "Edit"
        end
    end
    
    def destroy
        @musician.destroy
        redirect_to root_path
    end
    
    private
    
    def musicians_params
        params.require(:musician).permit(:name, :description, :instrument, :email, :category_id)
    end
    
    def find_musician
        @musician = Musician.find(params[:id])
    end
    
    
end
