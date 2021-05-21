class RoutinesController < ApplicationController
    def index 
        @routines = Routines.all
    end 

    def show
        @routine = Routine.find_by_id(params[:id]) 
    end 

    def new 
        @routine = Routine.new 
    end 

    def create 
        
       if @routine = Routine.new(routine_params)
          @routine.save
    
          redirect_to @routine
       else 
          render :new
       end 
    end 

    def routine_params
        params.require(:routine).permit(
        :name, 
        :set_1, :set_2, :set_3,
        :time,
        :instruction,
        muscle_groups_ids: [], 
        muscle_group_attributes: [
            :name, :muscle_1, :muscle_2, :muscle_3, :muscle_4
        ])
    end 
end
