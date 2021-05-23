class MuscleGroupsController < ApplicationController
    def index 
        @muscle_groups = MuscleGroup.all
    end 

    def show
        @muscle_group = MuscleGroup.find_by_id(params[:id]) 
    end 

    def new 
        @muscle_group = MuscleGroup.new 
    end 

    def create 
        
       if @muscle_group = MuscleGroup.new(muscle_group_params)
          @muscle_group.save
    
          redirect_to @muscle_group
       else 
          render :new
       end 

    end 

    def edit 
        @muscle_group = MuscleGroup.find_by_id(params[:id])
    end 

    def update
       @muscle_group = MuscleGroup.find_by_id(params[:id])
       if @muscle_group.update(muscle_group_params)
         redirect_to muscle_group_path(@muscle_group)
       else 
         render :update
       end 
    end  

    def muscle_group_params
        params.require(:muscle_group).permit(
        :name, 
        :muscle_1, :muscle_2, :muscle_3, :muscle_4, 
        routine_ids: [], 
        routines_attributes: [:name, :instruction, :time, :set_1, :set_2, :set_3 ]
        )
    end 
end
